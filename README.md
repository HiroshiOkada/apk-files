apk-files
=========

Poor man's **apk-files**. (Dockernized)

## Overview

Search Alpine Linux apk by filename.

## Example 


```
docker run --rm -it okadahiroshi/apk-files libssh.h
libssh-dev-0.7.3-r0:/usr/include/libssh/libssh.h
```

# Useage

`docker run --rm -it okadahiroshi/apk-files A_part_of_file_path)`
: Show apk name and fullpath

`docker run --rm -it okadahiroshi/apk-files`
: Enter docker container. (execute sh)
There is apk named files that contain file paths.
You can search by using grep etc.

# License

MIT (see LICENSE.txt)

# Auther

[Hiroshi Okada](https://hiroshi.toycode.com/)

