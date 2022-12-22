FROM ghcr.io/graybush/ublue-base:latest

COPY etc /etc

RUN rpm-ostree install clevis clevis-dracut clevis-udisks2 nmap-ncat openssh-askpass rclone tor vim \
    xorg-x11-drv-amdgpu vulkan-tools mesa-vulkan-drivers && \
    ostree container commit
