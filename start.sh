#!/bin/bash

supervisord -c /app/conf/supervisord.conf
while true ; do sleep 1 ; echo 3; done;
