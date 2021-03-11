build:
	./node_modules/electron-builder/out/cli/cli.js
.PHONY: build

deps:
	npm install
.PHONY: deps

clean:
	rm -rf ./dist
.PHONY: clean
