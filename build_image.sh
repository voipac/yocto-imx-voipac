#!/bin/bash

CONFIG=kas/imx93-voipac.yml

if  [ ! -z "${1}" ]; then
	kas shell ${CONFIG} -c "$1"
else
	kas build ${CONFIG}
fi
