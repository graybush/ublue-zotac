FROM ghcr.io/graybush/ublue-base:latest

COPY etc /etc

RUN setsebool -P -N use_nfs_home_dirs=1 unconfined_mozilla_plugin_transition=0 && \
    rpm-ostree override remove nano-default-editor && \
    rpm-ostree install clevis clevis-dracut clevis-udisks2 ffmpeg-free libratbag-ratbagd \
      nmap-ncat openssh-askpass rclone vim vim-default-editor \
      xorg-x11-drv-amdgpu vulkan-tools mesa-vulkan-drivers && \
    systemctl enable ratbagd.service && \
    ostree container commit
