#!/bin/bash

CONFIG=kas/imx93-voipac.yml

if  [ ! -z "${1}" ]; then
	./kas-container shell ${CONFIG} -c "$1"
else
	./kas-container --runtime-args "--security-opt seccomp=unconfined" build ${CONFIG}
fi
