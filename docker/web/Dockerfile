FROM sshd

RUN yum install httpd mod_ssl mod_wsgi gcc python-devel mysql mysql-devel -y
#openssl-devel


ADD packages /root/packages

WORKDIR /root/packages
RUN cp 00-mpm.conf /etc/httpd/conf.modules.d
RUN python get-pip.py
RUN pip install django
#pillow django-pagination pycrypto stompest
#MySQL-python

WORKDIR /root/packages/MySQL-python-1.2.5
RUN python setup.py install

RUN rm -rf /root/packages

WORKDIR /root