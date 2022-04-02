# Analysis of Waveline Firmware

#### Tools used
```
1. Binwalk
2. Strings
```
#### Command used for extracting the firmware

>binwalk -Me waveline-IE-AR-100T-WAVE-5.0.6.zip

```
Scan Time:     2022-04-02 02:09:10
Target File:   /home/esslp/Downloads/lab8/waveline-IE-AR-100T-WAVE-5.0.6.zip
MD5 Checksum:  156cede8569b0dfa5a9dd2fac74b5b68
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             Zip archive data, at least v2.0 to extract, compressed size: 9108849, uncompressed size: 9107459, name: IE-AR-100T-WAVE-5.0.6.hfw
9108882       0x8AFD92        End of Zip archive, footer length: 22
9108975       0x8AFDEF        End of Zip archive, footer length: 22


Scan Time:     2022-04-02 02:09:12
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/IE-AR-100T-WAVE-5.0.6.hfw
MD5 Checksum:  72713b94234f397d5a55d59cc4fa2f4a
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             Zip archive data, at least v2.0 to extract, compressed size: 186, uncompressed size: 360, name: meta-inf.xml
249           0xF9            Zip archive data, at least v2.0 to extract, compressed size: 9106959, uncompressed size: 9106938, name: IE-AR-100T-WAVE_firmware
9107437       0x8AF7ED        End of Zip archive, footer length: 22


Scan Time:     2022-04-02 02:09:13
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/meta-inf.xml
MD5 Checksum:  8f40ffab6467b7aaa4db1a228036f71b
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------


Scan Time:     2022-04-02 02:09:13
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/IE-AR-100T-WAVE_firmware
MD5 Checksum:  2175784d2456979a5ba32e6a71928a19
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             bzip2 compressed data, block size = 900k


Scan Time:     2022-04-02 02:09:22
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/0
MD5 Checksum:  5f03899c6173bc06a851bd898d5838f6
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             POSIX tar archive (GNU)


Scan Time:     2022-04-02 02:09:23
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/IE-AR-100T-WAVE_uImage
MD5 Checksum:  4801e13457e60a4dcdf0c39614e5233c
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             uImage header, header size: 64 bytes, header CRC: 0x520DABFB, created: 2009-06-30 07:32:08, image size: 9070000 bytes, Data Address: 0x8000, Entry Point: 0x8000, data CRC: 0xD822B635, OS: Linux, CPU: ARM, image type: OS Kernel Image, compression type: none, image name: "Linux-2.6.25.20"
64            0x40            Linux kernel ARM boot executable zImage (big-endian)
14096         0x3710          gzip compressed data, maximum compression, from Unix, last modified: 2009-06-30 07:32:07
8679819       0x84718B        StuffIt Deluxe Segment (data): f


Scan Time:     2022-04-02 02:09:32
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/deviceID
MD5 Checksum:  7f4dfc3c8e80e7f115d547b6afa9895f
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------


Scan Time:     2022-04-02 02:09:32
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/_IE-AR-100T-WAVE_uImage.extracted/3710
MD5 Checksum:  cfa73ee26562e88b988e6577eb5933b2
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
89440         0x15D60         gzip compressed data, maximum compression, from Unix, last modified: 2009-06-30 07:31:59
8499960       0x81B2F8        SHA256 hash constants, big endian
10067920      0x999FD0        Linux kernel version 2.6.25
10117136      0x9A6010        CRC32 polynomial table, little endian
10488672      0xA00B60        Neighborly text, "NeighborSolicits"
10488696      0xA00B78        Neighborly text, "NeighborAdvertisementsadd xfrm type"
10492319      0xA0199F        Neighborly text, "neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)(%s)"


Scan Time:     2022-04-02 02:09:44
Target File:   /home/esslp/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/_IE-AR-100T-WAVE_uImage.extracted/_3710.extracted/15D60
MD5 Checksum:  22791da892b1068f4865fa4a9d8a8916
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             ASCII cpio archive (SVR4 with no CRC), file name: "/bin", file name length: "0x00000005", file size: "0x00000000"
116           0x74            ASCII cpio archive (SVR4 with no CRC), file name: "/bin/dd", file name length: "0x00000008", file size: "0x00000008"
244           0xF4            ASCII cpio archive (SVR4 with no CRC), file name: "/bin/cp", file name length: "0x00000008", file size: "0x00000008"
.
.
.
```

It can be seen that this image has a lighttpd  web server, located at
>/home/$USER/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/_IE-AR-100T-WAVE_uImage.extracted/_3710.extracted/_15D60.extracted/cpio-root/etc/lighttpd

Location of private certificate and key can be found using 
> find . | xargs strings -n10 | grep 'BEGIN RSA PRIVATE KEY'

The private certificate of the web server is *wm.pems*  at 
>/home/$USER/Downloads/lab8/_waveline-IE-AR-100T-WAVE-5.0.6.zip.extracted/_IE-AR-100T-WAVE-5.0.6.hfw.extracted/_IE-AR-100T-WAVE_firmware.extracted/_0.extracted/_IE-AR-100T-WAVE_uImage.extracted/_3710.extracted/_15D60.extracted/cpio-root/etc/lighttpd

By using Strings command we can get all the continous ascii characters from binaries. 
>man strings

Here _ulps__config__tgz_ file has the admin password. By extracting all the continuous ascii characters into a text file and inspecting the file using grep command and analyzing the result. It can be found the  admin pass is detmold08
>admin password - detmold08

Apart from Admin another user that can observed from config file is _nobody_