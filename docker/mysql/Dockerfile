FROM cs6sshd

RUN yum install mysql-server -y
RUN echo -e "\n[mysqld]\ncharacter_set_server=utf8\n\n[client]\ndefault-character-set=utf8\n" >> /etc/my.cnf

EXPOSE 3306
CMD service mysqld start && /usr/sbin/sshd -D
