cp ../linux/drivers/media/i2c/ov02c10.c  .
make clean
make LD=ld.lld CXX=clang++ CC=clang
