FROM ghcr.io/ublue-os/base:latest

RUN rpm-ostree install clevis clevis-dracut clevis-udisks2 freeipa-client vim && \
    rpm-ostree cleanup -m && \
    ostree container commit