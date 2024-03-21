FROM amazonlinux:2023
RUN dnf -y install e2fsprogs bash mdadm util-linux xfsprogs
ADD setup-runtime-storage ./
RUN chmod +x ./setup-runtime-storage
ENTRYPOINT ["sh", "setup-runtime-storage"]
