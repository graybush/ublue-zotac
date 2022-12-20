FROM ghcr.io/ublue-os/base:latest

RUN rpm-ostree install clevis clevis-dracut freeipa-client vim && \
    rpm-ostree cleanup -m && \
    ostree container commit
