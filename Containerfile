FROM ghcr.io/ublue-os/base:latest

COPY etc /etc

RUN rpm-ostree install clevis clevis-dracut clevis-udisks2 freeipa-client nmap-ncat openssh-askpass rclone tor vim && \
    ostree container commit