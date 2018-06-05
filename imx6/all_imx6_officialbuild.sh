#!/bin/bash
NUM1=`expr $VERSION : 'V\([0-9]*\)'`
NUM2=`expr $VERSION : '.*[.]\([0-9A-Z]*\)'`
VERSION_NUM=$NUM1$NUM2
PRODUCT=""

#[x11]
#imx6_BSP
./imx6_officialbuild.sh imx6 imx6LBV"$VERSION_NUM" 1G x11 2>&1 |tee imx6LBV"$VERSION_NUM"_$DATE.log
[ "$?" -ne 0 ] && exit 1

#imx6_projects
if [ $UBC220A1_SOLO == true ]; then
	PRODUCT="ubc220a1-solo"
	./imx6_officialbuild.sh ubc220a1-solo U220A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee U220A1LIV"$VERSION_NUM"_DualLiteSolo_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $UBC220A1 == true ]; then
	PRODUCT="ubc220a1"
	./imx6_officialbuild.sh ubc220a1 U220A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee U220A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $UBCDS31A1 == true ]; then
	PRODUCT="ubcds31a1"
	./imx6_officialbuild.sh ubcds31a1 DS31A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee DS31A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM5420A1 == true ]; then
	PRODUCT="rom5420a1"
	./imx6_officialbuild.sh rom5420a1 5420A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 5420A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM5420B1_SOLO == true ]; then
	PRODUCT="rom5420b1-solo"
	./imx6_officialbuild.sh rom5420b1-solo 5420B1LIV"$VERSION_NUM" 512M-1G-2G x11 2>&1 |tee 5420B1LIV"$VERSION_NUM"_DualLiteSolo_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM5420B1 == true ]; then
	PRODUCT="rom5420b1"
	./imx6_officialbuild.sh rom5420b1 5420B1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 5420B1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $RSB4410A1 == true ]; then
	PRODUCT="rsb4410a1"
	./imx6_officialbuild.sh rsb4410a1 4410A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee 4410A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $RSB4410A2 == true ]; then
	PRODUCT="rsb4410a2"
	./imx6_officialbuild.sh rsb4410a2 4410A2LIV"$VERSION_NUM" 1G x11 2>&1 |tee 4410A2LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $RSB4411A1 == true ]; then
	PRODUCT="rsb4411a1"
	./imx6_officialbuild.sh rsb4411a1 4411A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 4411A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM7420A1 == true ]; then
	PRODUCT="rom7420a1"
	./imx6_officialbuild.sh rom7420a1 7420A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 7420A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM3420A1 == true ]; then
	PRODUCT="rom3420a1"
	./imx6_officialbuild.sh rom3420a1 3420A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 3420A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM7421A1_PLUS == true ]; then
	PRODUCT="rom7421a1-plus"
	./imx6_officialbuild.sh rom7421a1-plus 7421A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 7421A1LIV"$VERSION_NUM"_DualQuadPlus_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM7421A1 == true ]; then
	PRODUCT="rom7421a1"
	./imx6_officialbuild.sh rom7421a1 7421A1LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 7421A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $ROM7421A1_SOLO == true ]; then
	PRODUCT="rom7421a1-solo"
	./imx6_officialbuild.sh rom7421a1-solo 7421A1LIV"$VERSION_NUM" 512M-1G x11 2>&1 |tee 7421A1LIV"$VERSION_NUM"_DualLiteSolo_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $EBCRB01A1 == true ]; then
	PRODUCT="ebcrb01a1"
	./imx6_officialbuild.sh ebcrb01a1 RB01A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee RB01A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $EBCRS03A1 == true ]; then
	PRODUCT="ebcrs03a1"
	./imx6_officialbuild.sh ebcrs03a1 RS03A1LIV"$VERSION_NUM" 2G x11 2>&1 |tee RS03A1LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $EBCRS03A1_SOLO == true ]; then
	PRODUCT="ebcrs03a1-solo"
	./imx6_officialbuild.sh ebcrs03a1-solo RS03A1LIV"$VERSION_NUM" 1G x11 2>&1 |tee RS03A1LIV"$VERSION_NUM"_DualLiteSolo__$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
if [ $RSB6410A2 == true ]; then
	PRODUCT="rsb6410a2"
	./imx6_officialbuild.sh rsb6410a2 6410A2LIV"$VERSION_NUM" 1G-2G x11 2>&1 |tee 6410A2LIV"$VERSION_NUM"_DualQuad_$DATE.log
	[ "$?" -ne 0 ] && exit 1
fi
# Push commit
if [ -n $PRODUCT ]; then
	./imx6_officialbuild.sh push_commit $PRODUCT
	[ "$?" -ne 0 ] && exit 1
fi

mv *.log $STORED/$DATE/

echo "[ADV] All done!"
