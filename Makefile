all: files
	cabal build

files:
	dd if=/dev/urandom of=build/3mb bs=1048576 count=3
