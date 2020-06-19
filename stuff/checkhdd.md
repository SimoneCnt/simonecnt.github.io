---
layout: default
title: Check new Hard Disk before use
priority: 0.6
banner: research
date: 2020-06-19
---

{{ page.title }}
=====
---

This is my procedure to check a new hard drive for early failures before using it.

This procedure is destructive! You will lose data if you are not careful! 

Use it at your own risk. Don't blame me.

Use it only on HDD not SSD.

Change sdX with the correct device id.


1 - Get the current HD status via smartctl  
  ```sudo smartctl -a /dev/sdX > smartctl_sdX_`date +"%Y-%m-%d"`.txt```

2 - Get the block size  
  ```sudo hdparm -I /dev/sdX | grep Physical```

3 - Run badblocks (will take a couple of days). This command is destructive!
  All data on drive will be lost! Each one needs about 10h to complete for a 4TB
  disk.  
  ```sudo badblocks -wsv -b 4096 -t 0xaa /dev/sdX```  
  ```sudo badblocks -wsv -b 4096 -t 0x55 /dev/sdX```  

4 - Run smartctl short and long tests (the long test will take few hours)  
  ```sudo smartctl -t short /dev/sdX```  
  ```sudo smartctl -t long /dev/sdX```  

5 - Get the current HD status via smartctl  
  ```sudo smartctl -a /dev/sdX > smartctl_sdX_`date +"%Y-%m-%d"`.txt```

6 - Compare the two smartctl outputs for differences, in particular the reallocated sector count (```Reallocated_Sector_Ct```) which should be zero.

7- Create a new GPT:   
  ```sudo gdisk /dev/sdX```  
  If asked, select 2 (create blank GPT), then:  
  ```o``` (create a new empty GUID partition table (GPT))  
  ```n``` (add a new partition, keep defaults, use 8300 Linux filesystem)  
  ```p``` (print the partition table)  
  ```w``` (write table to disk and exit)  

8 - Format as ext4  
  ```sudo mkfs -t ext4 /dev/sdX1```  
  It may complain with: 
  ```/dev/sdX1 contains `VISX image file' data```  
  Not sure about what it means, but just say y.  

9 - (optional) Change label (name) of the partition. Mostly useful for external (USB) drives.  
  ```sudo e2label /dev/sdX1 your_label_name```

10 - Setup smartctl to run a short test every day and a long test once a week (and some other warnings...)  
  Add in ```/etc/smartd.conf``` :  
  ```/dev/sdX -a -o on -S on -s (S/../.././02|L/../../6/03) -W 4,35,45 -m your_email_address_here```  
  (This presuppone you have setup your system to send emails)

11 - Create directory for mount:  
  ```sudo mkdir /new_disk```  
  ```sudo chown yourname:yourgroup /new_disk```  

12 - Setup ```/etc/fstab``` with something like:  
  ```UUID=19f67802-02aa-4090-8708-93de963ddf79	/new_disk		ext4		defaults			0 	2```  
  You can get the uid using   
  ```ls -l /dev/disk/by-uuid/```
  and look for the one that links to sdX1

13 - Try to mount  
  ```sudo mount /new_disk```

Done!

