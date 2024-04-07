# 'project-base' defined in base.Dockerfile locally
FROM mlops-base as mlops-dev

RUN poetry install --no-root --only dev
