#!/bin/bash
QAADM_KEY=/opt/web/ansible/production/clone/.key/teste2.pem
ANSIBLE="sudo docker exec -it ansible2.3 ansible-playbook -i"
#ESTEIRA="pre-prod"
YML_DIR="playbooks"
DOMAIN="/opt/web/ansible/production/k8s_cluster/kubernetes-and-ansible/${YML_DIR}/"
ADM="main-setting-kubernetes.yaml"
INV="inv"

${ANSIBLE} ${DOMAIN}${INV} ${DOMAIN}${ADM} --private-key=${QAADM_KEY}
