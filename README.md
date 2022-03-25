# Alcatel 3T 8 T-Mobile TWRP Device Tree

This is a device tree for the Alcatel 3T 8 tablet offered by T-Mobile and Metro PCS(?).  
Manufacturer: TCL  
Product:      A3A_8_4G_TMO  

### What works:

/data decrypt  
adb  
adb push/sideload  
flashing  
reboot to system/recovery (Booting to fastboot requires a special procedure on this device. Search for a gist called mtk_bootseq)  
display, touch, brightness control  
mtp

### What doesn't:

Selinux (I haven't written policies)  
AVB (I don't know if this is necessary for this device. I need to learn more)  

### Kernel Source https://github.com/xmusjackson/android_kernel_tcl_A3A_8_4G_TMO  


tested using the omni minimal manifest, twrp-9 branch  
