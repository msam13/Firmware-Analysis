# Analysis of rsup Firmware

#### Tools used
```
1. Binwalk
2. Strings
```
#### Command used for extracting the firmware

>binwalk -Me rsup_145007844901.tar.gz
```
Scan Time:     2022-04-04 00:00:45
Target File:   /home/esslp/Pictures/Firmware-Analysis/rsup_145007844901/rsup_145007844901.tar.gz
MD5 Checksum:  dbaad84dd00cbd28116e75de387cccdb
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             gzip compressed data, from Unix, last modified: 2015-12-14 14:43:59
16442356      0xFAE3F4        QEMU QCOW Image
58171643      0x377A0FB       MySQL ISAM index file Version 7


Scan Time:     2022-04-04 00:03:21
Target File:   /home/esslp/Pictures/Firmware-Analysis/rsup_145007844901/_rsup_145007844901.tar.gz.extracted/0
MD5 Checksum:  0280567406c67540d30e2f3117dd17e8
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             POSIX tar archive (GNU), owner user name: "844901"


Scan Time:     2022-04-04 00:03:25
Target File:   /home/esslp/Pictures/Firmware-Analysis/rsup_145007844901/_rsup_145007844901.tar.gz.extracted/_0.extracted/e_145007844901
MD5 Checksum:  b3d5e4ab54fe3b6283593118d764dc47
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
265612        0x40D8C         CRC32 polynomial table, little endian
271580        0x424DC         CRC32 polynomial table, little endian
275176        0x432E8         LZO compressed data
330352        0x50A70         gzip compressed data, maximum compression, from Unix, last modified: 2014-10-17 17:42:08
392128        0x5FBC0         gzip compressed data, maximum compression, from Unix, last modified: 2014-10-17 17:42:07


Scan Time:     2022-04-04 00:03:26
Target File:   /home/esslp/Pictures/Firmware-Analysis/rsup_145007844901/_rsup_145007844901.tar.gz.extracted/_0.extracted/b_145007844901
MD5 Checksum:  d2532c825b55cf194298f20083650f2c
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             gzip compressed data, has original file name: "rootfs.ext2", from Unix, last modified: 2015-04-21 08:07:48


Scan Time:     2022-04-04 00:03:43
Target File:   /home/esslp/Pictures/Firmware-Analysis/rsup_145007844901/_rsup_145007844901.tar.gz.extracted/_0.extracted/g_145007844901
MD5 Checksum:  b129cb1381cba091065dda07d0110214
Signatures:    386
.
.
.

```
while unpacking with binwalk, we can see that original file name is *rootfs.ext2* indicating that it has **EXT2 file system**

It can be verified using the below cmd
>find _rsup_145007844901.tar.gz.extracted | xargs strings -n10 | grep 'EXT2FS filesystem'
