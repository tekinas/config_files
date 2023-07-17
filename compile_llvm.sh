cd llvm-project/
git pull
rm ../llvm-obj/* -rf
cd ../llvm-obj/
cmake -DCMAKE_C_COMPILER="clang" -DCMAKE_CXX_COMPILER="clang++" -DCMAKE_CXX_FLAGS="-march=native" -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi" -DLLVM_TARGETS_TO_BUILD=X86 -DCMAKE_BUILD_TYPE=Release -G "Ninja" ../llvm-project/llvm
time ninja
