cmd_usr/include/scsi/fc/.install := /bin/sh scripts/headers_install.sh ./usr/include/scsi/fc ./include/uapi/scsi/fc fc_fs.h fc_els.h fc_gs.h fc_ns.h; /bin/sh scripts/headers_install.sh ./usr/include/scsi/fc ./include/generated/uapi/scsi/fc ; touch usr/include/scsi/fc/.install
