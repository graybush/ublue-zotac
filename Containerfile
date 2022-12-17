FROM ghcr.io/ublue-os/base:latest

RUN rpm-ostree install vim clevis && \
    rpm-ostree cleanup -m && \
    ostree container commit
