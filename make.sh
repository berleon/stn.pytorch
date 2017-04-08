#!/usr/bin/env bash

CUDA_PATH=/usr/local/cuda/
PYTHON=python
# PYTHON=python3

cd torch_stn/src
echo "Compiling my_lib kernels by nvcc..."
nvcc -c -o my_lib_cuda_kernel.cu.o my_lib_cuda_kernel.cu -x cu -Xcompiler -fPIC -arch=sm_52

cd ../../
$PYTHON build.py
