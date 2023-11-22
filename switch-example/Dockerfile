FROM ubuntu:22.04
RUN apt update; apt upgrade -y
RUN apt install -y sshpass pip python3-paramiko ssh-client ; python3 -m pip --proxy "$HTTPS_PROXY" install ansible==2.9.26 ; apt install -y python3-paramiko ssh-client

RUN echo 'Host *' >> /etc/ssh/ssh_config
RUN echo '    KexAlgorithms +diffie-hellman-group1-sha1,diffie-hellman-group14-sha1' >> /etc/ssh/ssh_config
RUN echo 'Host * ' >> /etc/ssh/ssh_config
RUN echo '    PubkeyAcceptedAlgorithms +ssh-rsa ' >> /etc/ssh/ssh_config
RUN echo '    HostKeyAlgorithms +ssh-rsa ' >> /etc/ssh/ssh_config
RUN mkdir /etc/ansible
COPY config/ansible.cfg /etc/ansible/ansible.cfg
COPY config/hosts /etc/ansible/hosts
COPY config/known_hosts /root/.ssh/known_hosts

RUN mkdir /app
WORKDIR /app
COPY config/cisco.yml .
