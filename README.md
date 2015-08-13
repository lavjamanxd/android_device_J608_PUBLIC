# android_device_J608_PUBLIC
DOOOGEE-KISSME DG580 Configuration

Basic   | Spec Sheet
-------:|:-------------------------
CodeName| J608_PUBLIC
SoC     | MediaTek MT6582
CPU     | ARM Cortex-A7,1300 MHz Cores: 4
GPU     | ARM Mali-400 MP2,500MHz Cores: 2
Memory  | 1GB RAM, 533MHz
Shipped Android Version | 4.4.2
Storage | 8GB
Battery | 2500 mAh
Display | 5.5" 960 x 540 px
Camera  | 8MPx, LED Flash

![Alt text](http://www.lenteen.de/images/product-images/DOOGEE-KISSME-DG580-7.jpg?raw=true)


Status	|	Comment
-------:|:--------------------------
CMVERSION | 12.1
BUILD   | YES
BOOT    | Recovery boots
BUGS    | Can't Boot so I dont Know
KERNEL  | Using Prebuilt Binaries extracted from Stock rom

# Build

* init

        # repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0
        
        # repo sync
        
        # source build/envsetup.sh
        
        # lunch cm_mt6592-eng

* recoveries

        # . build/tools/device/makerecoveries.sh cm_mt6592-eng
    
        # mka bootimage

* full build

        # brunch cm_mt6592-eng

# MTK

Few words about mtk related binaries, services and migration peculiarities.

# Limitations

Services requires root:

`system/core/rootdir/init.rd`

  * surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

  * mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')
