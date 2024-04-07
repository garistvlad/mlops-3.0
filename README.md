# MLOps and Production inside DS researches 3.0 (MLOps-3.0)

## Description

MLOps course provided by ODS community. Detailed description could be found [here](https://ods.ai/tracks/mlops3-course-spring-2024) (in Russian).<br>
The repository is a direct result of the following programming assignments made:
1. Baseline repository with formatter & linter configured.

## Initial Setup

1. Before running, ensure you have the following software installed:
- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)

2. Clone the existing repository:
```shell
git clone https://github.com/garistvlad/mlops-3.0 mlops
cd mlops
```

3. Create `.env.prod` and `.env.dev` files. Provide the variables inside (example could be found in `.env.example`):
```shell
touch .env.prod .env.dev
```

```shell
# .env.example

# Google Cloud
GCP_CREDENTIALS_FILEPATH=

# Postgres
PG_HOST=
PG_PORT=
PG_USER=
PG_PASSWORD=
PG_DATABASE=


# TODO... exact list of vars will be specified
```

4. Build and run the Docker containers (`DEV` and `PROD` services configured inside [docker-compose.yaml](docker-compose.yaml)):
```shell
docker-compose up -d --build
```

```shell
# Expected output:
...
Attaching to base-1, dev-1, prod-1
base-1 exited with code 0
prod-1  | I am inside PROD
dev-1   | I am inside DEV
```

## Usage
`TODO`: depends on the model / tool we will develop in the nearest future

## Contribution
Please read the [Contribution Guidelines](CONTRIBUTING.md) before making any pull requests.
