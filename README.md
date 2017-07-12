sandapi

------

* 用docker 构建api容器，只需要修改code部分代码，然后，重新运行就ok
* 用户可以重新定义users 包，然后用-v 参数挂载到 -v <users_dir>:/app/code/users

one sample user defined handlers like above:


ok.py in users/ok.py
```
#coding=utf-8

import handlers.Base

@handlers.Base.RestMethod
class ok(handlers.Base.RestBaseHandler):

    __url__ = "/ok"

    def get(self):
        self.echo_data("this is users ok world.")
```

and then must define user import handler:

__init__.py in users/__init__.py

```

#coding=utf-8

def import_fn():
    import handlers.SandApi
    import ok
```

then url /ok can be called .

Or you can download one package from this project: 
[https://raw.githubusercontent.com/qixingyue/sandapi/master/sample.tar.gz](https://raw.githubusercontent.com/qixingyue/sandapi/master/sample.tar.gz)

At last run this docker command:

```
docker run -d -v /data0/sandapi/sample_user:/app/code/users/ --name sandapi sandapi 
```

* also it defined an daemon process , it will call users.daemon_func if it exits .
