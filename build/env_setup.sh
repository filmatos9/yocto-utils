SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export FILIPE_BUILD_DIR="$SCRIPT_DIR/build"
export FILIPE_SSTATE_DIR="$HOME/yocto/kirkstone/sstate-cache"
export FILIPE_DOWNLOADS_DIR="$HOME/yocto/kirkstone/downloads"
export TEMPLATECONF="$SCRIPT_DIR/yocto/meta-filipe/conf"
export MACHINE="qemux86-64"

export SSTATE_DIR="$FILIPE_SSTATE_DIR"
export DL_DIR="$FILIPE_DOWNLOADS_DIR"

source "$SCRIPT_DIR/yocto/poky/oe-init-build-env" "$FILIPEBUILDDIR"
export BB_ENV_PASSTHROUGH_ADDITIONS="$BB_ENV_PASSTHROUGH_ADDITIONS SSTATE_DIR DL_DIR"

echo " "
echo "***********************************************"
echo "Ford Configuration Settings"
echo "***********************************************"
echo "Template Configuration:   $TEMPLATECONF"
echo "Build Directory:          $FILIPE_BUILD_DIR"
echo "Downloads Directory:      $FILIPE_DOWNLOADS_DIR"
echo "SSTATE Directory:         $FILIPE_SSTATE_DIR"
echo "Machine:                  $MACHINE"
echo "***********************************************"

# with template config, we don't need to add the layers
# bitbake-layers add-layer ../meta-openembedded/meta-oe 
# bitbake-layers add-layer ../meta-openembedded/meta-python
# bitbake-layers add-layer ../meta-selinux
# bitbake-layers add-layer ../meta-filipe