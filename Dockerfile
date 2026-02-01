# Use slim Python 3.11 (matches project requirement)
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Install Poetry (project uses it for dependencies)
RUN pip install --no-cache-dir poetry

# Copy all project files
COPY . .

# Install project dependencies (no dev tools needed for basic run)
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi


# Default command: run tests to verify everything works
CMD ["poetry", "run", "pytest"]