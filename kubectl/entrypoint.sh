#!/bin/sh -l

sh -c "echo ${KUBERNETES_CA} | base64 -d > /ca.crt"
sh -c "/usr/local/bin/kubectl --server=${KUBERNETES_SERVER} --token=${KUBERNETES_TOKEN} --certificate-authority=/ca.crt $*"
