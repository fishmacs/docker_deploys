FROM django

RUN pip install chardet stompest stompest.async pytz pillow redis django-redis django-tastypie celery numpy pycrypto

#VOLUME ["/home/wzhao/www/voice:/var/www/voice", "/var/log/palmtao/voice/web:/var/log/httpd", "/etc/httpd/conf/voice:/etc/httpd/conf", "/home/wzhao/ds:/root/ds"]

CMD httpd && /usr/sbin/sshd -D
