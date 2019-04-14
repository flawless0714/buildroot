# Introduction
This branch is specified for **aarch64** running on Qemu.

For more information, please refer to [my note](https://hackmd.io/s/HyxvSmwFE).

# Usage
Assume the build has done sucessfully, you can boot the kernel with command:
```
qemu-system-aarch64 -M virt -cpu cortex-a53 -nographic -smp 1 -kernel output/images/Image -append "root=/dev/vda console=ttyAMA0" -netdev user,id=eth0 -device virtio-net-device,netdev=eth0 -drive file=output/images/rootfs.ext2,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0
```
Note that you need qemu installed, and path and name to kernel and rootfs may varients if you modified .config before the build.

# Reference
- [Original project](https://github.com/buildroot/buildroot)
- [Buildroot](https://buildroot.org/)