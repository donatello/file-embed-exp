all: files
	cabal build

files:
	dd if=/dev/urandom of=build/10mb bs=1048576 count=3
