FROM sshd

RUN yum install gcc python-devel mysql mysql-devel -y

ADD packages /root/packages

WORKDIR /root/packages
RUN python get-pip.py
RUN pip install django==1.4.5 stompest stompest.async
RUN pip install PIL --allow-unverified PIL --allow-all-external

WORKDIR /root/packages/MySQL-python-1.2.5
RUN python setup.py install

RUN rm -rf /root/packages

CMD /root/sync/syncd start && /usr/sbin/sshd -D
