#!/bin/bash

service nginx start
spawn-fcgi -p 8080 ./a.out
nginx -s reload
tail -f /dev/null