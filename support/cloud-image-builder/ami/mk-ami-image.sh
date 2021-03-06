#!/bin/bash

PHOTON_IMG_OUTPUT_PATH=$1

cd $PHOTON_IMG_OUTPUT_PATH
mv photon-ami.raw photon-ami-$PHOTON_RELEASE_VER-$PHOTON_BUILD_NUM.raw
tar -Szcf photon-ami-$PHOTON_RELEASE_VER-$PHOTON_BUILD_NUM.tar.gz photon-ami-$PHOTON_RELEASE_VER-$PHOTON_BUILD_NUM.raw
ln -s photon-ami-$PHOTON_RELEASE_VER-$PHOTON_BUILD_NUM.tar.gz photon-ami.tar.gz

rm -f photon-ami-$PHOTON_RELEASE_VER-$PHOTON_BUILD_NUM.raw
