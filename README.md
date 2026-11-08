# python-freetds

Official [`python`](https://hub.docker.com/_/python) image with FreeTDS and unixODBC installed
(`freetds-dev freetds-bin unixodbc-dev tdsodbc unixodbc`), ready for `pymssql` or
`pyodbc` with the `FreeTDS` ODBC driver.

Docker Hub: [`quai1rol/python-freetds`](https://hub.docker.com/r/quai1rol/python-freetds)

| Tags | Platforms |
|---|---|
| `3.10` `3.11` `3.12` `3.13` `3.14` `3.15` `latest` (= 3.15) | `linux/amd64`, `linux/arm64` |
| `3.8` `2.7` (legacy, 2021, not rebuilt) | `linux/amd64` |

## Build

```sh
./build.sh           # build all versions
./build.sh --push    # build and push
```

Versions are listed in `build.sh`. It uses the buildx builder `tt-builder`
(override with `BUILDER=<name>`), which needs QEMU/binfmt for arm64.
