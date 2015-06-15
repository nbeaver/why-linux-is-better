all: README.html
# Prevent make from looking for a file called 'all'
.PHONY : all

README.html: README.rst
	rst2html README.rst > README.html
