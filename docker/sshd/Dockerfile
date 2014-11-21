FROM centos

RUN yum install openssh-server -y

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# generate host keys
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_ecdsa_key -N ''
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

ADD id_rsa.pub /root/.ssh/authorized_keys

