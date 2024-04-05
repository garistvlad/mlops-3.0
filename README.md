# MLOps and Production inside DS researches 3.0 (MLOps-3.0)

## Description

MLOps course provided by ODS community. Detailed description could be found [here](https://ods.ai/tracks/mlops3-course-spring-2024) (in Russian).<br>
The repository is a direct result of the following programming assignments made:
1. Baseline repository with formatter & linter configured.

## Initial Setup

1. Make sure you have `poetry` installed on your computer.
2. Clone the existing repository:
```shell
git clone https://github.com/garistvlad/mlops-3.0 mlops
cd mlops
```
3. Install project dependencies:
```shell
poetry install
```
4. Create `.env` file and provide the following variables inside:
```shell
touch .env
```

```shell
# .env

# GCP
GCP_CREDENTIALS_FILEPATH=

# Postgres
PG_HOST=
PG_PORT=
PG_USER=
PG_PASSWORD=
PG_DATABASE=

# TODO... exact list of vars will be specified
```

## Usage
`TODO`: depends on the model / tool we will develop in the nearest future

## Contribution
Please read the [Contribution Guidelines](CONTRIBUTING.md) before making any pull requests.
