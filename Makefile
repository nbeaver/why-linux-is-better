all: why-linux-is-better.html
# Prevent make from looking for a file called 'all'
.PHONY : all

why-linux-is-better.html : why-linux-is-better.rst
	rst2html why-linux-is-better.rst > why-linux-is-better.html
