FROM ubuntu:latest

RUN apt install iproute python iputils -y

RUN apt update

RUN apt upgrade -y

RUN pip install ansible --user

RUN ansible-galaxy collection install community.general

RUN ansible --version

ADD exec-playbook /root/exec-playbook

ADD ansible.cfg /root/.ansible.cfg

RUN chmod 700 /root/exec-playbook

CMD ["/root/exec-playbook"]
