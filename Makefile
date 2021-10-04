.PHONY: clean

ifeq ($(OS),Windows_NT)
	EXT=.exe
endif

didzorchcancelmovienight$(EXT): didzorchcancelmovienight.cbl
	cobc -x -Oo $@ $<

clean:
	-rm didzorchcancelmovienight didzorchcancelmovienight.exe
