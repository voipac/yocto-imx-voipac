#!/bin/bash

source ./build_common.sh

if  [ ! -z "${3}" ]; then
	./kas-container --runtime-args "--security-opt seccomp=unconfined -v/home/user/tmp/cst-4.0.1:/build/cst" shell ${CONFIG} -c "$3"
else
	./kas-container --runtime-args "--security-opt seccomp=unconfined -v/home/user/tmp/cst-4.0.1:/build/cst" build ${CONFIG}
fi
