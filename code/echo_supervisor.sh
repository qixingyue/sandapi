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
stdout_logfile_maxbytes = 2048MB
stdout_logfile_backups = 50
stderr_logfile_maxbytes = 2048MB
stderr_logfile_backups = 10

startretries = 20

[program:${n}_daemon]
command = python -u ${p}/code/daemon.py
user = root
autostart = true
autorestart = true
startsecs = 10
stderr_logfile = ${p}/logs/daemon_stderr.log
stdout_logfile = ${p}/logs/daemon_stdout.log
startretries = 20
stdout_logfile_maxbytes = 2048MB
stdout_logfile_backups = 50
stderr_logfile_maxbytes = 2048MB
stderr_logfile_backups = 10

"
