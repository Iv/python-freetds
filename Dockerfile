# Official Python image + FreeTDS / unixODBC (for pymssql, pyodbc with the FreeTDS driver).
ARG PYTHON_VERSION=3.15
FROM python:${PYTHON_VERSION}
ARG PYTHON_VERSION
LABEL org.opencontainers.image.title="python-freetds" \
      org.opencontainers.image.description="Python ${PYTHON_VERSION} with FreeTDS and unixODBC installed" \
      org.opencontainers.image.source="https://github.com/Iv/python-freetds" \
      org.opencontainers.image.url="https://hub.docker.com/r/quai1rol/python-freetds"
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      freetds-dev freetds-bin unixodbc-dev tdsodbc unixodbc \
 && rm -rf /var/lib/apt/lists/*
ENV PYTHONUNBUFFERED=1
