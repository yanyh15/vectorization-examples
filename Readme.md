## Vectorization Examples

These are various examples and benchmarks for vectorization I'm working on. I plan to expand this as time goes on. The Intel AVX examples are my current baseline; I just started learning about the Arm SVE extensions. I would like to eventually add IBM POWER-9/10 and RISC-V benchmarks, but that will depend on if I can get an emulator working :)

### Benchmarks List

Currently, I have the following benchmarks for the Intel AVX extensions. My goal is to have an equivalent for each platform:

* AXPY
* Sum
* Matrix-vector multiplication
* Matrix-matrix multiplication
* Jacobi (I have an old implementation, but I'm unsure of the correctness)

Some architectures have extensions to help further optimize each of these types. The AXPY can be optimized with fused-multiply-add (as can the matrix operations). Sums can be optimized using partial sums across several vector registers. In the absence of specialized matrix hardware, a combination of these methods can be used.

The goal is to have versions that use C intrinsics and assembly versions.

### Intel AVX

The AVX benchmarks are only for AVX/AVX2. I currently don't have access to an AVX-512 machine. I would like to eventually do some AVX-512 work; when I do, I'll expand this. AVX2 is on pretty much any recent x86-64 processor (I used my everday Dell laptop, which has an Intel Core i7 to develop this. The speed differences are noticable).

### Arm SVE

At the time of writing, with the exception of the Fujitsu A64FX, there are currently no available SVE-enabled chips. However, if you have an AArch64 (Arm64)- based machine, you can use the Arm emulator to run SVE programs. GCC 10 and later ship with the SVE intrinsics; I know one of the later versions of LLVM do as well, but I'm not quite sure which.

For now, I'm using a Raspberry Pi 4 with 4gb of RAM running Ubuntu Mate 20.04. Its certainly not the fastest piece of hardware I've ever used, but its sufficient for learning and non-trivial tasks. I've used the board for other projects besides this; for the price, its worth it.

