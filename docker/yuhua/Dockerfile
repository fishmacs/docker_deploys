# do not from django, because it uses django-1.4.5
FROM sshd

RUN yum install httpd mod_ssl mod_wsgi mod_xsendfile gcc python-devel mysql mysql-devel -y
#openssl-devel

ADD packages /root/packages

WORKDIR /root/packages
RUN cp 00-mpm.conf /etc/httpd/conf.modules.d
RUN python get-pip.py
RUN pip install django==1.4.5 django-pagination numpy pycrypto stompest mongoengine chardet xlrd 
RUN pip install PIL --allow-unverified PIL --allow-all-external

WORKDIR /root/packages/MySQL-python-1.2.5
RUN python setup.py install

RUN rm -rf /root/packages

CMD httpd && /usr/sbin/sshd -D
