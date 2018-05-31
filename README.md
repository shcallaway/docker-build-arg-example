# Docker Build Arg Example

I created this example to demonstrate how environment variables can be made available to scripts within Docker builds via [build arguments](https://docs.docker.com/engine/reference/builder/#arg).

Command | Result
--- | ---
`docker build .` | `MY_ENV_VAR` will be undefined.
`MY_ENV_VAR=foo docker build .` | `MY_ENV_VAR` will be undefined (within the execution context of `start.js`) because it was never made available to each build step as a build argument.
`docker build . --build-arg MY_ENV_VAR=foo` | `MY_ENV_VAR` will equal "foo" because it was explicitly set to "foo".
`MY_ENV_VAR=foo d build . --build-arg MY_ENV_VAR` | `MY_ENV_VAR` will equal "foo" because build arguments assume the environment value by default.
