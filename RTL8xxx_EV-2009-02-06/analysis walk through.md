# Analysis of Realtek Firmware

#### Tools used
```
1. Binwalk
2. Strings
```
#### Command used for extracting the firmware

>binwalk -Me DCS-935L_A1_FW_v1.04.06.bin

```
Scan Time:     2022-04-02 09:45:22
Target File:   /home/esslp/Pictures/Firmware-Analysis/RTL8xxx_EV-2009-02-06/DCS-935L_A1_FW_v1.04.06.bin
MD5 Checksum:  81b9e00f272383cb77978ddfcfc466f8
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
10264         0x2818          LZMA compressed data, properties: 0x5D, dictionary size: 16777216 bytes, uncompressed size: 4600352 bytes
1429538       0x15D022        Squashfs filesystem, little endian, version 4.0, compression:lzma, size: 5899733 bytes, 1375 inodes, blocksize: 131072 bytes, created: 1901-12-23 23:49:20


Scan Time:     2022-04-02 09:45:26
Target File:   /home/esslp/Pictures/Firmware-Analysis/RTL8xxx_EV-2009-02-06/_DCS-935L_A1_FW_v1.04.06.bin.extracted/2818
MD5 Checksum:  4c5dc86a326ca3cad1f411a4f968a4d6
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
3649568       0x37B020        Linux kernel version 2.6.30
3696256       0x386680        CRC32 polynomial table, little endian
3918188       0x3BC96C        Unix path: /etc/Wireless/RTL8192CD.dat
3918338       0x3BCA02        Unix path: /etc/Wireless/RTL8192CD.dat
3918422       0x3BCA56        Unix path: /etc/Wireless/RTL8192CD.dat Success
4004120       0x3D1918        Neighborly text, "NeighborSolicitsip6_tables: (C) 2000-2006 Netfilter Core Team"
4004140       0x3D192C        Neighborly text, "NeighborAdvertisements-2006 Netfilter Core Team"
4005843       0x3D1FD3        Neighborly text, "neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)(%s)"

```
Since the most interesting folders for analysis is etc/, /bin, /sbin. First let us move to /etc
>$cd /Firmware-Analysis/RTL8xxx_EV-2009-02-06/_DCS-935L_A1_FW_v1.04.06.bin.extracted/squashfs-root/etc

We can find the model and device name of a firmware by running 
>$find . | xargs strings -n10 | grep model

In the ouput the follow information is avaible
```
wps_model_name="RTL8xxx"
wps_model_num="EV-2009-02-06"
wps_modelDescription="WLAN Access Point"
```
Location of SSL private key can be found using
>_DCS-935L_A1_FW_v1.04.06.bin.extracted/squashfs-root/etc/stunnel$ find . | xargs strings -n10 | grep 'BEGIN RSA PRIVATE KEY'
 ```
 rings -n10 | grep 'BEGIN RSA PRIVATE KEY'
strings: './stunnel.conf': No such file
strings: -----BEGIN RSA PRIVATE KEY-----
'./stunnel-smtps.conf': No such file
strings: './stunnel-smtps-test.conf': No such file
 ```
 
 so the SSL private key is in stunnel.pem file
 
Version of OpenSSL library used is another important information. since library file are in /lib, lets 
>cd _DCS-935L_A1_FW_v1.2.04.06.bin.extracted/squashfs-root/usr/lib

we can collect all strings in a separate file and analyse it
>find . | xargs strings -n10 | cat > sam

we can analyse the sam file created in last step. 
Search for OpenSSL, third occurance shows the version number
```
SSLv2 part of OpenSSL 0.9.8zc 15 Oct 2014
```
