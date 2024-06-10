.PHONY: prebuild, install, build, .help

help:
	@echo "Targets:"
	@echo "	install: Install node dependencies"

install:
	@echo "Installing node dependencies (npm)"
	npm install
