# **************************************
#
# OpenGM Etcd
#
# VERSION: v3.4.7
#
# *************************************

FROM alpine:3.12

MAINTAINER XTech Cloud "xtech.cloud"

ENV container docker

ADD etcd /usr/bin/
RUN chmod +x /usr/bin/etcd
ADD etcdctl /usr/bin/
RUN chmod +x /usr/bin/etcdctl

ENTRYPOINT ["/usr/bin/etcd"]
