# Introduction
This version of buildroot is specified for riscv64 emulator.

For more information, please refer to [my note](https://hackmd.io/s/BJkgV_A_V).

# Usage
After the building (if success), you may have rootfs image at directory `output/image`, then you can boot the riscv64 emulator with command `temu run/orig/test_riscv64.cfg` if you have `temu` installed.

# Reference
- [Original project](https://bellard.org/tinyemu/buildroot.html)
- [Buildroot](https://buildroot.org/)