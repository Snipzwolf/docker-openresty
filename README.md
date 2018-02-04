# docker-openresty

Copy of [official](https://github.com/openresty/docker-openresty) dockerfile so that could create a arm64 image as official image doesn't have one currently

## Changes
* Dockerfile
  * seperated out install dependencies
  * set DEBIAN_FRONTEND as environment instead of inline
* nginx.conf - only includes other files with no other setup
