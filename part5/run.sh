#!/bin/bash

gcc part4.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
nginx -g "daemon off;"
nginx -s reload