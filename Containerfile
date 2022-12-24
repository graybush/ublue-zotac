FROM ghcr.io/graybush/ublue-base:latest

COPY etc /etc

RUN rpm-ostree override remove nano-default-editor && \
    rpm-ostree install clevis clevis-dracut clevis-udisks2 nmap-ncat openssh-askpass rclone tor \
    vim vim-default-editor xorg-x11-drv-amdgpu vulkan-tools mesa-vulkan-drivers && \
    ostree container commit
