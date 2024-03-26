cd llvm-project/
git pull
rm ../llvm-obj/* -rf
cd ../llvm-obj/
cmake -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" -DCMAKE_CXX_FLAGS="-march=native" -DLLVM_USE_LINKER=lld -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;polly;llvm" -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;compiler-rt;libc;libunwind" -DLLVM_TARGETS_TO_BUILD=host -DCMAKE_BUILD_TYPE=Release -G "Ninja" ../llvm-project/llvm
time ninja
