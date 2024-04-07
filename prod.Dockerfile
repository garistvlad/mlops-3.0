# 'project-base' defined in base.Dockerfile locally
FROM mlops-base as mlops-prod

RUN poetry install --no-root --without dev
