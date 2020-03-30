FROM amazonlinux:2

RUN  yum update -y && yum install -y \
    nvme-cli \
    parted \
    xfsprogs \
&& yum clean all && rm -rf /var/cache/yum

COPY eks-local-disk-provisioner.sh /usr/local/bin/

ENTRYPOINT ["eks-local-disk-provisioner.sh"]
