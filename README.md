# python-freetds

Official [`python`](https://hub.docker.com/_/python) image with FreeTDS and unixODBC installed
(`freetds-dev freetds-bin unixodbc-dev tdsodbc unixodbc`), ready for `pymssql` or
`pyodbc` with the `FreeTDS` ODBC driver.

- Source: [github.com/Iv/python-freetds](https://github.com/Iv/python-freetds)
- Docker Hub: [`quai1rol/python-freetds`](https://hub.docker.com/r/quai1rol/python-freetds)

| Tags | Platforms |
|---|---|
| `3.10` `3.11` `3.12` `3.13` `3.14` `3.15` `latest` (= 3.15) | `linux/amd64`, `linux/arm64` |
| `3.8` `2.7` (legacy, 2021, not rebuilt) | `linux/amd64` |

## Publishing (GitHub Actions)

[`.github/workflows/publish.yml`](.github/workflows/publish.yml) builds all versions for
`linux/amd64` + `linux/arm64` and pushes them to Docker Hub: on push to `main`, manually,
and weekly (to pick up fresh official `python` images). It also syncs this README to the
Docker Hub overview.

Repository settings: variable `DOCKERHUB_USERNAME` = `quai1rol`, secret `DOCKERHUB_TOKEN`
(Read & Write to push; Read, Write, Delete to update the description).

## Build locally

```sh
./build.sh           # build all versions
./build.sh --push    # build and push
```

Versions are listed in `build.sh`. It uses the buildx builder `tt-builder`
(override with `BUILDER=<name>`), which needs QEMU/binfmt for arm64.
