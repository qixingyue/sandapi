FROM centos:7
MAINTAINER xingyue<qixingyue@126.com>
RUN yum update -y
RUN yum install java-1.8.0-openjdk-1.8.0.111-2.b15.el7_3 -y 
RUN yum install python-setuptools-0.9.8-4.el7 net-tools -y 
RUN easy_install pip && pip install supervisor
RUN mkdir /app
WORKDIR /app
#基础性的工作

RUN mkdir -p /app/{conf,logs}
RUN echo_supervisord_conf > conf/supervisord.conf
ADD code /app/code
RUN /bin/bash code/echo_supervisor.sh >> conf/supervisord.conf
ADD start.sh /app/start.sh
RUN pip install -r code/requirements.txt
EXPOSE 8080

CMD ["/bin/bash","/app/start.sh"]
