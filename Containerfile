FROM ghcr.io/graybush/ublue-base:latest

COPY etc /etc

RUN rpm-ostree install clevis clevis-dracut clevis-udisks2 nmap-ncat openssh-askpass rclone tor vim && \
    ostree container commit
