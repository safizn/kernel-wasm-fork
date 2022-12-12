# clean 
make clean
sudo make clean
lsmod
make clean


# install 
curl https://get.wasmer.io -sSfL | sh -s "0.14.1"
make
make install
sudo modprobe kernel-wasm
sudo modprobe kwasm-networking
sudo modprobe kwasm-wasi

#fix signature 
sudo mokutil --disable-validation
# also run  https://github.com/andikleen/simple-pt/issues/8#issuecomment-813438385


# check 
which wasmer
sudo wasmer run --backend singlepass --loader kernel ./test/rootfs/data/hello_world.wasm


# make current user have root privileges
visudo