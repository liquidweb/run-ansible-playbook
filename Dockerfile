FROM fedora:latest

RUN dnf install iproute ansible iputils -y

RUN dnf update -y

ADD exec-playbook /root/exec-playbook
ADD ansible.cfg /root/.ansible.cfg

RUN chmod 700 /root/exec-playbook

CMD ["/root/exec-playbook"]
