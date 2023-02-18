ARG FEDORA_MAJOR_VERSION=37

FROM ghcr.io/graybush/ublue-base:${FEDORA_MAJOR_VERSION}

COPY etc /etc

COPY --from=ghcr.io/ublue-os/udev-rules etc/udev/rules.d/* /etc/udev/rules.d

RUN setsebool -P -N use_nfs_home_dirs=1 unconfined_mozilla_plugin_transition=0 && \
    rpm-ostree override remove nano-default-editor && \
    rpm-ostree install clevis clevis-dracut clevis-udisks2 ffmpeg-free just libratbag-ratbagd \
      nmap-ncat openssh-askpass rclone vim vim-default-editor \
      xorg-x11-drv-amdgpu vulkan-tools mesa-vulkan-drivers && \
    systemctl enable rpm-ostree-countme.service && \
    systemctl enable ratbagd.service && \
    ostree container commit
