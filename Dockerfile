FROM ubuntu:latest

RUN apt install iproute ansible iputils -y

RUN apt update -y

RUN ansible-galaxy collection install community.general

ADD exec-playbook /root/exec-playbook
ADD ansible.cfg /root/.ansible.cfg

RUN chmod 700 /root/exec-playbook

CMD ["/root/exec-playbook"]
