FROM centos:8

RUN yum install 'dnf-command(config-manager)' -y
RUN yum config-manager --set-enabled PowerTools
RUN yum install epel-release  -y

RUN yum install ansible iputils -y

ADD exec-playbook /root/exec-playbook
ADD ansible.cfg /root/.ansible.cfg

RUN chmod 700 /root/exec-playbook

CMD ["/root/exec-playbook"]
