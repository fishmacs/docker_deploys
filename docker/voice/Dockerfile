FROM django

RUN pip install twilio

#VOLUME ["/home/wzhao/www/voice:/var/www/voice", "/var/log/palmtao/voice/web:/var/log/httpd", "/etc/httpd/conf/voice:/etc/httpd/conf", "/home/wzhao/ds:/root/ds"]

CMD httpd && /usr/sbin/sshd -D
