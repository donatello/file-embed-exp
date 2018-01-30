all: files
	stack build

files:
	dd if=/dev/urandom of=build/10mb bs=1048576 count=10
	dd if=/dev/urandom of=build/25mb bs=1048576 count=25
