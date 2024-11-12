#!/bin/bash

CONFIG=kas/imx93-voipac.yml
KIT_CONFIG="$1"


if [ -z "${KIT_CONFIG}" ]; then
	echo "Unknown config, using lite ..."
	KIT_CONFIG="lite"
fi

case ${KIT_CONFIG} in
	"lite" )
		echo "Lite configuration"
		CONFIG="${CONFIG}:kas/imx93-config-lite.yml";;
	"basic" )
		echo "Basic configuration"
		CONFIG="${CONFIG}:kas/imx93-config-basic.yml";;
	"pro" )
		echo "Pro configuration"
		CONFIG="${CONFIG}:kas/imx93-config-pro-max.yml";;
	"max" )
		echo "Max configuration"
		CONFIG="${CONFIG}:kas/imx93-config-pro-max.yml";;
esac


if  [ ! -z "${2}" ]; then
	kas shell ${CONFIG} -c "$2"
else
	kas build ${CONFIG}
fi
