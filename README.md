# Docker Build Arg Example

I created this example to demonstrate how environment variables can be made available to scripts within Docker builds via [build arguments](https://docs.docker.com/engine/reference/builder/#arg).

## Experiments

1. `docker build .`

`MY_ENV_VAR` will be undefined, because it was never set.

2. `MY_ENV_VAR=foo docker build .`

`MY_ENV_VAR` will be undefined (within the execution context of `start.js`) because it was never _made available to each build step as a build argument_.

3. `docker build . --build-arg MY_ENV_VAR=foo`

`MY_ENV_VAR` will equal "foo"!

4. `MY_ENV_VAR=foo d build . --build-arg MY_ENV_VAR`

`MY_ENV_VAR` will equal "foo"!
