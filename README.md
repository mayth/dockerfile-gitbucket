GitBucket Dockerfile
====================

Dockerfile for GitBucket with some flavor :)

[![](https://badge.imagelayers.io/mayth/gitbucket:latest.svg)](https://imagelayers.io/?images=mayth/gitbucket:latest 'Get your own badge on imagelayers.io')

# Notes
* `GITBUCKET_HOME` is set to `/var/gitbucket`, and mount to the same path. Create the directory in the host.
* Expose 8080 for the Web UI, and 29418 for SSH.

# Links
* GitBucket: https://github.com/gitbucket/gitbucket

# License
This Dockerfile is released under [CC0](http://creativecommons.org/publicdomain/zero/1.0/).

To the extent possible under law, the person who associated CC0 with this work has waived all copyright and related or neighboring rights to this work.
