#coding=utf-8

import time
import users

while True:
    if hasattr(users,'daemon_func') :
        users.daemon_func()
    else :
        print "# ",
        time.sleep(1)
