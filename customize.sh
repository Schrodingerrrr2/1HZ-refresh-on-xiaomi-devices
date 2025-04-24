on_install() {
  ui_print "- 正在释放文件"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644  
}
CommonPath=$MODPATH/common
  ui_print "*******************************"
  ui_print "  注意！"
  ui_print "  模块仅在小米12s"
  ui_print "  HyperOS2.0.5.0.VLTCNXM版本测试"
  ui_print "  最低亮度1hz刷新率"
  ui_print "*******************************"
if [ ! -d ${CommonPath} ];then
  ui_print "模块高级设置不需要修复!"
elif [ "`ls -A ${CommonPath}`" = "" ];then
    ui_print "模块高级设置为空!"
    rm  -rf  ${CommonPath}
else
  ui_print "- 正在进行模块高级设置"
  mv  ${CommonPath}/*  $MODPATH
  rm  -rf ${CommonPath}
fi
OUTFD=$2
ZIPFILE=$3
mount /data 2>/dev/null
  SKIPUNZIP=1