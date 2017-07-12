#!/usr/bin/env python
#coding=utf-8

import sys
import handlers.Base
import users

handlers.Base.RestInit(8080,users.import_fn)
