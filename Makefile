all: readme.html
# Prevent make from looking for a file called 'all'
.PHONY : all

readme.html: readme.rst Makefile
	rst2html readme.rst readme.html
