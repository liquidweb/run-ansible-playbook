# run-ansible-playbook
Utility I use for easily running an ansible playbook

docker run --rm -v /home/ssullivan/.ssh/id_rsa:/root/.ssh/id_rsa -v /home/ssullivan/Code/run-ansible-playbook/playbook-example:/root/playbook -e PLAYBOOK=/root/playbook/test.yml -e IP=10.30.75.136 sgsullivan/run-ansible-playbook:latest
