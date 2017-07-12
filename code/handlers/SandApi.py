#coding=utf-8

import Base
import datetime
import time
import json
import os

@Base.RestMethod
class Sample(Base.RestBaseHandler):

	__url__ = '/'

	def prepare(self):
		pass

	def get(self):
		self.echo_message("Hello Sample Api World!")	

