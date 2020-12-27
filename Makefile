all:
	@echo "Run 'make test' in order to run tests."

test:
	shellcheck -f gcc ./*/*/build ./*/*/post-install ./*/*/test
