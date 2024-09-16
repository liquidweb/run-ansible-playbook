FROM ubuntu:noble

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install iproute2 python3-pip python3-full iputils-arping iputils-ping ansible -y -f

RUN ansible-galaxy collection install community.general

RUN ansible --version

ADD exec-playbook /root/exec-playbook

ADD ansible.cfg /root/.ansible.cfg

RUN chmod 700 /root/exec-playbook

CMD ["/root/exec-playbook"]
