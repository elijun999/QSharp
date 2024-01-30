# QSharp-Dockerfile

This repository provides a Dockerfile for running the Azure Quantum Development Kit (Modern QDK).

## Prerequisites

Ensure you have Docker installed on your system. Refer to the official installation instructions (https://docs.docker.com/manuals/) for your operating system.

## Usage

1. Download this repo.
```
git clone https://github.com/elijun999/QSharp
```

2. Run the container (with docker-compose)
```
docker compose up -d
```
Once you run the container, you will see a Jupyter notebook installed with Modern QDK, running on http://localhost:8888.

3. Upon initial login, a token is necessary. This token can be retrieved from the logs:
```
sudo docker-compose logs
# or
sudo docker logs <container_name>
```


Have fun!
