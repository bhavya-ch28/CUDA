#include <stdio.h>
#include <cuda_runtime.h>

__global__ void hello_from_gpu() {
    printf("Hello from GPU thread %d in block %d!\n",
           threadIdx.x, blockIdx.x);
}

int main() {
    printf("Launching kernel WITHOUT error check or sync:\n");
    hello_from_gpu<<<2,4>>>();
    printf("CPU finished!\n");
    return 0;
}
