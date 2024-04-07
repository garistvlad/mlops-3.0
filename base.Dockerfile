FROM python:3.12-slim as python-base

# https://python-poetry.org/docs#ci-recommendations
ENV POETRY_VERSION=1.8.2 \
    POETRY_HOME=/opt/poetry \
    POETRY_VENV=/opt/poetry-venv \
    POETRY_CACHE_DIR=/opt/poetry-cache

# Create stage for Poetry installation
FROM python-base as poetry-base

# Creating a virtual environment just for poetry and install it with pip
RUN python3 -m venv $POETRY_VENV \
	&& $POETRY_VENV/bin/pip install -U pip setuptools \
	&& $POETRY_VENV/bin/pip install poetry==${POETRY_VERSION}

# Create a new stage from the base python image
FROM python-base as mlops-base

# Copy Poetry to app image
COPY --from=poetry-base ${POETRY_VENV} ${POETRY_VENV}

# Add Poetry to PATH
ENV PATH="${PATH}:${POETRY_VENV}/bin"

# Copy Dependencies
COPY poetry.lock pyproject.toml ./
RUN touch README.md

# [OPTIONAL] Validate the project is properly configured
RUN poetry check

# Copy the project files
WORKDIR /app
COPY . /app

# Install Dependencies & clear cache
RUN poetry install --no-interaction --no-cache --without dev && rm -rf $POETRY_CACHE_DIR
