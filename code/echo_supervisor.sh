#/bin/bash

p=$(pwd)
n=apihi

echo "
[program:${n}]
command = python -u ${p}/code/api.py
user = root
autostart = true
autorestart = true
startsecs = 10
stderr_logfile = ${p}/logs/api_stderr.log
stdout_logfile = ${p}/logs/api_stdout.log
startretries = 20
"
