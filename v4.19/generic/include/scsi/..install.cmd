cmd_usr/include/scsi/.install := /bin/sh scripts/headers_install.sh ./usr/include/scsi ./include/uapi/scsi cxlflash_ioctl.h scsi_netlink.h scsi_netlink_fc.h scsi_bsg_fc.h; /bin/sh scripts/headers_install.sh ./usr/include/scsi ./include/generated/uapi/scsi ; touch usr/include/scsi/.install
