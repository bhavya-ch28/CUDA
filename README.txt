# CUDA Foundational Experiments — Debugging and Kernel Basics

## Overview
This repository contains CUDA experiments focused on understanding GPU execution, kernel launches, and basic debugging. These exercises build the foundation for parallel programming on GPUs.

## Files
- hello_gpu_debug.cu — Correct kernel launch with error checking and synchronization
- hello_gpu_no_debug.cu — Kernel launch without error checking or synchronization to observe asynchronous GPU behavior

## Concepts Learned
- GPU threads, blocks, and grids
- CUDA kernel syntax: <<<gridDim, blockDim>>>
- Error detection using cudaGetLastError()
- Synchronization using cudaDeviceSynchronize()
- Race conditions and non-deterministic execution
- Understanding kernel launch failures and invalid configuration arguments

## Sample Output

### Correct kernel launch
Launching correct kernel:
Hello from GPU thread 0 in block 0!
Hello from GPU thread 1 in block 0!
Hello from GPU thread 2 in block 0!
Hello from GPU thread 3 in block 0!
Hello from GPU thread 0 in block 1!
Hello from GPU thread 1 in block 1!
Hello from GPU thread 2 in block 1!
Hello from GPU thread 3 in block 1!
All done from CPU!

### Without error checks/sync
Launching kernel WITHOUT error check or sync:
CPU finished!
(GPU prints may appear later or out of order)

## Reflection
Through these experiments, I learned the importance of error checking and synchronization in GPU programming. Even simple kernels require careful attention to launch configuration and debugging practices. These exercises helped me understand:

- How GPU threads execute asynchronously relative to the CPU
- The role of cudaDeviceSynchronize() to ensure proper output and error detection
- How invalid kernel configurations produce runtime errors

This foundation prepares me for building more complex GPU computations and optimizing parallel performance in future projects.
