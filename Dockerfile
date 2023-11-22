FROM amazonlinux:2
RUN yum -y install e2fsprogs bash mdadm util-linux
ADD setup-runtime-storage ./
RUN chmod +x ./setup-runtime-storage
ENTRYPOINT ["sh", "setup-runtime-storage"]
