#!/bin/bash
MACHINE_LIST=""

# Check build machine name
if [ $RSB_4410_A2 == true ]; then
	MACHINE_LIST="$MACHINE_LIST rsb_4410_a2"
fi
if [ $RSB_4411_A1 == true ]; then
	MACHINE_LIST="$MACHINE_LIST rsb_4411_a1"
fi

export MACHINE_LIST
./imx6_android_dailybuild.sh