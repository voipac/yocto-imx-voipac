#!/bin/bash

set -e

# Copy manifests helper function
copy_manifests() {
	rm -rf .repo
	mkdir -p .repo/manifests
	cp scripts/voipac.xml .repo/manifests/
}

# Fetch the latest meta layers
if ! diff -q .repo/manifests/voipac.xml scripts/voipac.xml >/dev/null 2>&1; then
        copy_manifests
        repo init -u "$(pwd)"/.repo/repo -b default -m voipac.xml
fi
		        
repo sync --optimized-fetch

MACHINE=imx8mq-voipac DISTRO=fslc-xwayland source ./setup-environment build-voipac
bitbake -f voipac-image
