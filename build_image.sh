#!/bin/bash

source ./build_common.sh

if  [ ! -z "${2}" ]; then
	kas shell ${CONFIG} -c "$2"
else
	kas build ${CONFIG}
fi
