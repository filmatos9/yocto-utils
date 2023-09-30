SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export ENV_VAR_BUILD_DIR="$SCRIPT_DIR/build"
export ENV_VAR_SSTATE_DIR="$HOME/yocto/kirkstone/sstate-cache"
export ENV_VAR_DOWNLOADS_DIR="$HOME/yocto/kirkstone/downloads"
export TEMPLATECONF="$SCRIPT_DIR/yocto/meta-filipe/conf"
export MACHINE="qemux86-64"

# Delete old local.conf and bblayers.conf 
rm $ENV_VAR_BUILD_DIR/conf/local.conf
rm $ENV_VAR_BUILD_DIR/conf/bblayers.conf

source "$SCRIPT_DIR/yocto/poky/oe-init-build-env" "$ENV_VAR_BUILD_DIR"
export BB_ENV_PASSTHROUGH_ADDITIONS="$BB_ENV_PASSTHROUGH_ADDITIONS ENV_VAR_SSTATE_DIR ENV_VAR_DOWNLOADS_DIR"

echo " "
echo "******************************************************"
echo "Ford Configuration Settings"
echo "******************************************************"
echo "Template Configuration:           $TEMPLATECONF"
echo "Build Directory:                  $ENV_VAR_BUILD_DIR"
echo "Downloads Directory:              $ENV_VAR_DOWNLOADS_DIR"
echo "Shared State Cache Directory:     $ENV_VAR_SSTATE_DIR"
echo "Machine:                          $MACHINE"
echo "******************************************************"

# with template config, we don't need to add the layers
# bitbake-layers add-layer ../meta-openembedded/meta-oe 
# bitbake-layers add-layer ../meta-openembedded/meta-python
# bitbake-layers add-layer ../meta-selinux
# bitbake-layers add-layer ../meta-filipe