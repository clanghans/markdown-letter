##
# Markdown letter
#
# @file
# @version 0.1

.PHONY: all clean

MD = letter.md
DATE := $(shell date +'%Y-%m-%d')
HASH := $(shell date +%s | sha256sum | head -c 8 ; echo)

all: letter.pdf

letter.pdf: $(MD)
	pandoc --pdf-engine=pdflatex --template=letter.tex -s $< -f markdown+escaped_line_breaks -t latex -o $@

install: letter.pdf
	cp letter.pdf $(DATE)-$(HASH).pdf

clean:
	rm -f letter.pdf

# end
