#!/bin/bash

CONFIG=kas/imx91-voipac.yml
KIT_CONFIG="$1"
MACHINE="$2"


if [ -z "${KIT_CONFIG}" ]; then
	echo "Unknown config, using lite ..."
	KIT_CONFIG="lite"
fi

if [ -z "${MACHINE}" ]; then
	echo "Unknown machine, using imx91 ..."
	MACHINE="imx91"
fi

# append machine to config
if [ ${MACHINE} = "imx93" ]; then
	CONFIG=kas/imx93-voipac.yml
elif [ ${MACHINE} = "imx91" ]; then
	CONFIG=kas/imx91-voipac.yml
fi


case ${KIT_CONFIG} in
	"lite" )
		echo "Lite configuration"
		CONFIG="${CONFIG}:kas/imx9x-config-lite.yml";;
	"basic" )
		echo "Basic configuration"
		CONFIG="${CONFIG}:kas/imx9x-config-basic.yml";;
	"pro" )
		echo "Pro configuration"
		CONFIG="${CONFIG}:kas/imx9x-config-pro-max.yml";;
	"max" )
		echo "Max configuration"
		CONFIG="${CONFIG}:kas/imx9x-config-pro-max.yml";;
esac
