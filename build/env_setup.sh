#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export FILIPEBUILDDIR="$SCRIPT_DIR/../../../build"
export TEMPLATECONF="$SCRIPT_DIR/../meta-filipe/conf"
export MACHINE="qemux86-64"

source "$SCRIPT_DIR/../poky/oe-init-build-env" "$FILIPEBUILDDIR"

echo " "
echo "***********************************************"
echo "Ford Configuration Settings"
echo "***********************************************"
echo "Template Configuration:   $TEMPLATECONF"
echo "Build Directory:          $FILIPEBUILDDIR"
echo "Machine:                  $MACHINE"
echo "***********************************************"

# with template config, we don't need to add the layers
# bitbake-layers add-layer ../meta-openembedded/meta-oe 
# bitbake-layers add-layer ../meta-openembedded/meta-python
# bitbake-layers add-layer ../meta-selinux
# bitbake-layers add-layer ../meta-filipe