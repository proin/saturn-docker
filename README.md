[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/proin/saturn-docker/master/LICENSE)
[![ubuntu](https://img.shields.io/badge/ubuntu-14.04-blue.svg)]()
[![node](https://img.shields.io/badge/node-v7.2.1-blue.svg)]()
[![python](https://img.shields.io/badge/python-2.7.6-blue.svg)]()
[![tensorflow](https://img.shields.io/badge/tensorflow-0.12.1-blue.svg)]()
[![r](https://img.shields.io/badge/R-3.0.2-blue.svg)]()
[![torch](https://img.shields.io/badge/torch-7-blue.svg)]()

## Saturn Dockerfile

This repository contains **Dockerfile** of Saturn for Docker's automated build published to the public Docker Hub Registry.

### Base Docker Image

- [ubuntu:14.04](https://registry.hub.docker.com/u/library/ubuntu/)

### Build Docker

- Install [Docker](https://www.docker.com).

- Build

    ```bash
    git clone https://github.com/proin/saturn-docker
    cd saturn-docker
    docker build -t saturn .
    ```

### Usage

```bash
docker pull proin/saturn
docker run -it -p 3000:3000 proin/saturn
```
