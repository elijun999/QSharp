# QSharp

This repo contains a Dockerfile, which builds Docker image with the the Azure Quantum Development Kit (Modern QDK) tutorial.

## Usage

1. Download this repo.
```
git clone https://github.com/elijun999/QSharp
```

2. Run the container (with docker-compose)
```
sudo docker-compose up -d
```
Once you run the container, you will see a Jupyter notebook installed with Modern QDK, running on http://localhost:8888.

3. Upon initial login, a token is necessary. This token can be retrieved from the logs:
```
sudo docker-compose logs
# or
sudo docker logs <container_name>
```


Have fun!
