FROM centos6

VOLUME ["/home/wzhao/ds:/ds:rw"]

RUN yum install gcc bzip2-devel zlib-devel openssl-devel sqlite-devel libpng  -y

WORKDIR /ds/Python-2.7.8
RUN ./configure --enable-shared && make && make install

WORKDIR /usr/lib64
RUN ln -s /usr/local/lib/libpython2.7.so.1.0 libpython2.7.so.1.0

WORKDIR /usr/bin
RUN rm python && ln -s /usr/local/bin/python python

WORKDIR /ds
RUN python get-pip.py
