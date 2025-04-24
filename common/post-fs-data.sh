TARGET_PATH=$(find /vendor/etc /product/etc -maxdepth 1 -type d -name "device_features" -print -quit)

if [ -z "$TARGET_PATH" ]; then
  exit
fi

MODULE_PATH=${0%/*}/system
MODULE_PATH=$MODULE_PATH$TARGET_PATH

mkdir -p $MODULE_PATH
rm -rf $MODULE_PATH/*
#cp -f $TARGET_PATH/* $MODULE_PATH/
#sed -i '/<features>/a <bool name="support_aod_fullscreen">true<\/bool>' $MODULE_PATH/*
