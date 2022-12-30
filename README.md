# ublue-zotac

[![build-zotac](https://github.com/graybush/ublue-zotac/actions/workflows/build.yml/badge.svg)](https://github.com/graybush/ublue-zotac/actions/workflows/build.yml)

Experimental custom Silverblue image for my Zotac

## Usage

Warning: This is an experimental feature and should not be used in production, try it in a VM for a while, you have been warned!

    rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/graybush/ublue-zotac:latest

We build date tags as well, so if you want to rebase to a particular day's release:

    rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/graybush/ublue-zotac:20221217

The `latest` tag will automatically point to the latest build.
