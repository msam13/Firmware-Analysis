# Analysis of moxa-nport-w2150a-w2250a-series Firmware

#### Tools used
```
1. Binwalk
2. Strings
```
#### Command used for extracting the firmware

>binwalk -Me moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom
```

Scan Time:     2022-04-04 00:27:20
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom
MD5 Checksum:  0ccee82eb9411086d3b16fe67305f3c1
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
88            0x58            Linux kernel ARM boot executable zImage (little-endian)
8188          0x1FFC          LZO compressed data
8665          0x21D9          LZO compressed data
595002        0x9143A         mcrypt 2.5 encrypted data, algorithm: "!", keysize: 5554 bytes, mode: "\",
1420228       0x15ABC4        Linux kernel version 2.6.31
1426082       0x15C2A2        gzip compressed data, maximum compression, from Unix, last modified: 2017-08-11 07:00:25
1944048       0x1DA9F0        Squashfs filesystem, little endian, version 4.0, compression:gzip, size: 5365377 bytes, 616 inodes, blocksize: 131072 bytes, created: 2017-08-11 07:04:00
7309844       0x6F8A14        Squashfs filesystem, little endian, version 4.0, compression:gzip, size: 1537896 bytes, 148 inodes, blocksize: 131072 bytes, created: 2017-08-11 07:04:02


Scan Time:     2022-04-04 00:27:26
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/_moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom.extracted/21D9
MD5 Checksum:  bd5832c7c1b33c2ee5d0328378f00d51
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
97120         0x17B60         ASCII cpio archive (SVR4 with no CRC), file name: "/dev", file name length: "0x00000005", file size: "0x00000000"
97236         0x17BD4         ASCII cpio archive (SVR4 with no CRC), file name: "/dev/console", file name length: "0x0000000D", file size: "0x00000000"
97360         0x17C50         ASCII cpio archive (SVR4 with no CRC), file name: "/root", file name length: "0x00000006", file size: "0x00000000"
97476         0x17CC4         ASCII cpio archive (SVR4 with no CRC), file name: "TRAILER!!!", file name length: "0x0000000B", file size: "0x00000000"
110331        0x1AEFB         LZMA compressed data, properties: 0xC0, dictionary size: 0 bytes, uncompressed size: 64 bytes
1483453       0x16A2BD        Certificate in DER format (x509 v3), header length: 4, sequence length: 1284
1483565       0x16A32D        Certificate in DER format (x509 v3), header length: 4, sequence length: 1288
2408589       0x24C08D        Certificate in DER format (x509 v3), header length: 4, sequence length: 1292
2408593       0x24C091        Certificate in DER format (x509 v3), header length: 4, sequence length: 1304
2408597       0x24C095        Certificate in DER format (x509 v3), header length: 4, sequence length: 1308
2581533       0x27641D        Certificate in DER format (x509 v3), header length: 4, sequence length: 3
2635960       0x2838B8        Linux kernel version 2.6.31
2651172       0x287424        gzip compressed data, maximum compression, from Unix, last modified: 2017-08-11 07:00:25
2660186       0x28975A        Unix path: /sys/kernel/debug
2660211       0x289773        Unix path: /sys/kernel/debug/tracing/available_tracers
2660329       0x2897E9        Unix path: /sys/kernel/debug/tracing/current_tracer
2660396       0x28982C        Unix path: /sys/kernel/debug/tracing/current_tracer
2660443       0x28985B        Unix path: /sys/kernel/debug/tracing/current_tracer
2660503       0x289897        Unix path: /sys/kernel/debug/tracing/trace_options
2660614       0x289906        Unix path: /sys/kernel/debug/tracing/trace_options
2660665       0x289939        Unix path: /sys/kernel/debug/tracing/tracing_enabled
2660713       0x289969        Unix path: /sys/kernel/debug/tracing/trace > /tmp/trace.txt
2660773       0x2899A5        Unix path: /sys/kernel/debug/tracing/tracing_enabled
2733584       0x29B610        CRC32 polynomial table, little endian
3207588       0x30F1A4        Unix path: /dev/vc/0
3336324       0x32E884        Neighborly text, "neighbor %.2x%.2x.%.2x:%.2x:%.2x:%.2x:%.2x:%.2x lost on port %d(%s)(%s)"
3636455       0x377CE7        LZMA compressed data, properties: 0xC0, dictionary size: 0 bytes, uncompressed size: 200 bytes
3642915       0x379623        LZMA compressed data, properties: 0xC0, dictionary size: 0 bytes, uncompressed size: 32 bytes


Scan Time:     2022-04-04 00:27:33
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/_moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom.extracted/_21D9.extracted/1AEFB
MD5 Checksum:  3b5d3c7d207e37dceeedd301e35e2e58
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------


Scan Time:     2022-04-04 00:27:33
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/_moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom.extracted/_21D9.extracted/287424
MD5 Checksum:  b26099a6a5251c4e093b0717bc82d317
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------


Scan Time:     2022-04-04 00:27:33
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/_moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom.extracted/_21D9.extracted/377CE7
MD5 Checksum:  fbaf48ec981a5eecdb57b929fdd426e8
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------


Scan Time:     2022-04-04 00:27:33
Target File:   /home/esslp/Pictures/Firmware-Analysis/moxa-nport-w2150a-w2250a-series-firmware-v1.11/_moxa-nport-w2150a-w2250a-series-firmware-v1.11.rom.extracted/_21D9.extracted/379623
MD5 Checksum:  70bc8f4b72a86921468bf8e8441dce51
Signatures:    386

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------

```
The files found in the root file system in the lib directory (/lib) are
```
build/	    
cci_handler_dev.rb  connection/  scripts/
ssh/
timer/  
util/
cci_handler  conf/		 
processor/   
service/	
test.rb  
t.rb
```