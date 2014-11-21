FROM centos

RUN yum install mysql-server -y
RUN echo -e "\n[client]\ndefault-character-set=utf8\n" >> /etc/my.cnf

EXPOSE 3306
