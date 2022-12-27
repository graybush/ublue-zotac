FROM ghcr.io/graybush/ublue-base:latest

COPY etc /etc

RUN setsebool -P -N use_nfs_home_dirs=1 && \
    rpm-ostree override remove nano-default-editor && \
    rpm-ostree install freeipa-client clevis clevis-dracut clevis-udisks2 libratbag-ratbagd nmap-ncat openssh-askpass rclone tor \
      vim vim-default-editor xorg-x11-drv-amdgpu vulkan-tools mesa-vulkan-drivers && \
    ostree container commit
