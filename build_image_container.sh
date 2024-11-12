#!/bin/bash

source ./build_common.sh

if  [ ! -z "${2}" ]; then
	./kas-container shell ${CONFIG} -c "$2"
else
	./kas-container --runtime-args "--security-opt seccomp=unconfined" build ${CONFIG}
fi
