# Example project for building Yocto for Voipac iMX boards

## Prerequisities
Build was verified on Ubuntu 18.04 and Ubuntu 20.04.

### Host packages
Please install following packages on build machine:

```sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm python3-subunit mesa-common-dev python zstd```

If you have docker container running you don't need to install any host packages and move to Image build section.


## Image build
Please follow below steps how to build and flash imx8m image:

- run `build_image.sh` script to  build iMX93 Voipac devkit image
- run `build_image_container.sh` script to build iMX93 Voipac devkit image in docker container
- use `uuu` tool to flash image to target (for more info about flashing see: https://wiki.voipac.com/index.php?title=iMX8M_Industrial_Flashing_procedure)
- boot your new build image
