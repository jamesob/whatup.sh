# whatup.sh
Get a quick overview of what's happening on a Unix system

Barely does anything at the moment and probably only works on Debian systems.

## Usage

```sh
$ curl https://raw.githubusercontent.com/jamesob/whatup.sh/master/whatup.sh > whatup.sh
$ chmod +x whatup.sh
$ sudo whatup.sh

Listening TCP ports

COMMAND     PID            USER   FD   TYPE   DEVICE SIZE/OFF NODE NAME
systemd-r  1428 systemd-resolve   13u  IPv4    26811      0t0  TCP localhost:domain (LISTEN)
rpcbind    1430            root    8u  IPv4    22915      0t0  TCP *:sunrpc (LISTEN)
rpcbind    1430            root   11u  IPv6    22918      0t0  TCP *:sunrpc (LISTEN)
[...]

Logged in users

12:03:53 up 6 days,  2:05, 20 users,  load average: 0.66, 0.48, 0.46
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
james    :1       :1               22Jan19 ?xdm?  21:11m  0.00s /usr/lib/gdm3/gdm-x-session --run-script i3
[...]

Top processes (memory usage)

USER     %MEM COMMAND
james     3.1 /usr/lib/chromium-browser/chromium-browser --enable-pinch --profile-directory=Profile 1
james     1.2 /usr/lib/chromium-browser/chromium-browser --type=renderer --field-trial-handle=11632416877256863648,96043
james     1.0 /usr/share/spotify/spotify --type=renderer --no-sandbox --disable-features=ExtendedMouseButtons --service-
[...]


Top processes (CPU usage)

USER     %CPU COMMAND
james     3.7 /usr/lib/chromium-browser/chromium-browser --type=renderer --field-trial-handle=11632416877256863648,96043
james     3.5 /usr/lib/chromium-browser/chromium-browser --type=renderer --field-trial-handle=11632416877256863648,96043
james     2.6 htop
[...]


Storage

NAME                    MAJ:MIN RM   SIZE RO TYPE  MOUNTPOINT
sdb                       8:16   1  14.5G  0 disk
├─sdb1                    8:17   1   1.8G  0 part
└─sdb2                    8:18   1   2.3M  0 part
nvme1n1                 259:0    0   477G  0 disk
├─nvme1n1p1             259:1    0   750M  0 part
├─nvme1n1p2             259:2    0     5G  0 part
└─nvme1n1p3             259:3    0 471.2G  0 part
nvme0n1                 259:4    0 931.5G  0 disk
├─nvme0n1p1             259:5    0   512M  0 part  /boot/efi
├─nvme0n1p2             259:6    0   732M  0 part  /boot
└─nvme0n1p3             259:7    0 930.3G  0 part
  └─nvme0n1p3_crypt     253:0    0 930.3G  0 crypt
    ├─ubuntu--vg-root   253:1    0 929.3G  0 lvm   /
    └─ubuntu--vg-swap_1 253:2    0   976M  0 lvm   [SWAP]

Filesystem                   Size  Used Avail Use% Mounted on
udev                          31G     0   31G   0% /dev
/dev/mapper/ubuntu--vg-root  914G  715G  153G  83% /
/dev/nvme0n1p2               705M  225M  429M  35% /boot
/dev/nvme0n1p1               511M  6.1M  505M   2% /boot/efi
```
