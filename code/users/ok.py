#coding=utf-8

import handlers.Base

@handlers.Base.RestMethod
class ok(handlers.Base.RestBaseHandler):

    __url__ = "/ok"

    def get(self):
        self.echo_data("this is users ok world.")
