#!/bin/bash
flashdrive_dir=`lsblk | grep -o "/run/media.*"`
if [ -z "$flashdrive_dir" ]; then

  echo "`date` No USB flashdrive detected"

else

  echo `date`
  rclone sync --progress ~/w $flashdrive_dir/bkp/w
  
  echo `date`
  rclone sync --progress ~/l $flashdrive_dir/bkp/l
  
  echo "`date` Backup finished"

fi
