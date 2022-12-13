#!/bin/bash

set -e

cd /opt

MACHINE=imx8mq-voipac DISTRO=fslc-xwayland source ./setup-environment build-voipac
#MACHINE=imx8mq-voipac DISTRO=poky source ./setup-environment build-voipac
#nice bitbake -f voipac-image
#nice bitbake fsl-image-network-full-cmdline
nice bitbake voipac-image
