# Base image for building dependencies
FROM python:3.11-slim-buster AS builder

# Install requirements
RUN pip3 install --upgrade pip
RUN pip3 install \
  qsharp \
  azure-quantum \
  ipykernel \
  ipympl \
  jupyterlab

# Install optional packages for specific quantum frameworks (uncomment as needed)
# RUN pip3 install azure-quantum[qiskit]
# RUN pip3 install azure-quantum[cirq]

# Final image for running the application
FROM python:3.11-slim-buster

# Copy only essential files from the builder stage
COPY --from=builder /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages

# Expose port for Jupyter Notebook
EXPOSE 8888

# Set working directory
WORKDIR /app

# Copy code and notebooks
COPY . /app

# Create non-root user for security
RUN adduser -u 5678 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser

# Start Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
