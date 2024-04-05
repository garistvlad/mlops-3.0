# Contributing to MLOps-3.0

## How to Contribute

1. Fork the repository to your GitHub account. 
2. Clone the forked repository to your local machine:
```shell
git clone https://github.com/garistvlad/mlops-3.0
```

3. Create a new branch for your contribution:
```shell
git checkout -b ha1/ha-short-description
```
Every branch related to home-assignment should be named with the following format: `ha{HA-NUMBER:int}/{SHORT-DESCRIPTION:str}`. For example, `ha1/reposotory`. 

4. Make your changes, ensuring that you follow the project's coding conventions and guidelines.
5. Commit your changes:
```shell
git commit -m "{LABEL}: Your commit message here"
```

There are the following labels allowed:
- `HA`: for home assignment branches
- `HOTFIX`: for BUG fixes inside existing pull requests
- some other CAPITAL letters label relates to the feature you are developing. For example, `RESEARCH` or `FEATURE`

6. Push your changes to your fork:
```shell
git push origin feature/your-feature
```

7. Open a pull request (PR) against the `main` branch of the original repository.
8. Provide a clear description of your changes in the PR description, including any relevant context or motivation behind the changes.
9. Wait for the maintainers to review your PR. You may need to address any feedback or comments before your changes are merged.

## Code Style and Guidelines

- Pre-commit hooks are set up to ensure consistent code style and formatting.
Make sure to install pre-commit hooks locally by running:
```shell
poetry run pre-commit install
```

- Before submitting a pull request, run the following command to check for linting errors, formatting issues, and test failures:
```shell
poetry run pre-commit run --all-files
poetry run pylint src
poetry run mypy src
poetry run isort src tests
poetry run black src tests
poetry run pytest tests
```

## Reporting Issues

If you encounter any bugs, issues, or have suggestions for improvements, please open an issue on the issue tracker with a clear description of the problem or feature request.
