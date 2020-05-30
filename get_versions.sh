#!/bin/bash
rm /mnt/P/temp_chia_versions.txt
servers=(chia00 chia01 chia02 chia03 chia04 chia05 chia06 chia97 chia98 chia99 full-node dx2 dx3 hp mgpu01 mgpu04)


for i in "${servers[@]}"
do
	chia_ver=$(ssh $i "ls /home/ryan/.chia" |grep "beta")
        linux_ver=$(ssh $i "lsb_release -d | sed 's/Description: //'")      
	echo $i","$linux_ver","$chia_ver >> /mnt/P/temp_chia_versions.txt

done
