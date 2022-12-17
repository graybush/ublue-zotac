FROM ghcr.io/ublue-os/base:latest

RUN rpm-ostree install clevis vim && \
    rpm-ostree cleanup -m && \
    ostree container commit
