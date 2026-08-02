# Variables
ZIP = zip
MODULE_FILES := $(shell find module -type f)

.PHONY: all clean

all: build/module.zip

build/module.zip: $(MODULE_FILES)
	mkdir -p build
	rm -f $@
	cd module && $(ZIP) -r ../$@ .

clean:
	rm -rf build
