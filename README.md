# docker-openresty

Copy of [official](https://github.com/openresty/docker-openresty) dockerfile so that could create a arm64 image as official image doesn't have one currently

## Changes
* Dockerfile
  * separated out install dependencies & compiling code
  * set DEBIAN_FRONTEND as environment instead of inline
  * changed entrypoint to allow customization before start
* nginx.conf - only includes other files with no other setup

## Environment Vars
Var Name | Default Value | Description
--- | --- | ---
USERNAME | openresty | the username used in the [user](http://nginx.org/en/docs/ngx_core_module.html#user) directive
UID | 500 | the uid of the user used in the [user](http://nginx.org/en/docs/ngx_core_module.html#user) directive
GROUPNAME | openresty | the group name used in the [user](http://nginx.org/en/docs/ngx_core_module.html#user) directive
GID | 500 | the gid of the group used in the [user](http://nginx.org/en/docs/ngx_core_module.html#user) directive

## Entrypoint Options
Option | Default Value | Description
--- | --- | ---
-s | None | Path of script to run before starting openresty
