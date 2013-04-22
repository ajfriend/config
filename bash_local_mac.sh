# bash_local_mac.sh -- local bash setting for mac osx

# for CUDA
conditionally_prefix_path /Developer/NVIDIA/CUDA-5.0/bin
if [ -d /Developer/NVIDIA/CUDA-5.0/lib ]; then
  export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-5.0/lib:$DYLD_LIBRARY_PATH
fi
