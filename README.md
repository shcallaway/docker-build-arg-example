# Docker Build Arguments

This project demonstrates how environment variables are made available to scripts within Docker builds via [build arguments](https://docs.docker.com/engine/reference/builder/#arg).

Command | Result
--- | ---
`docker build .` | `MY_ENV_VAR` is undefined.
`MY_ENV_VAR=foo docker build .` | `MY_ENV_VAR` is undefined (within the execution context of `start.js`) because it was never made available to each build step as a build argument.
`docker build . --build-arg MY_ENV_VAR=foo` | `MY_ENV_VAR` equals "foo" because it was explicitly set to "foo".
`MY_ENV_VAR=foo d build . --build-arg MY_ENV_VAR` | `MY_ENV_VAR` equals "foo" because build arguments assume the environment value by default.
