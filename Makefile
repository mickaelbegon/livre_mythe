.PHONY: all markdown pdf clean

all: markdown pdf

markdown:
	python3 scripts/build_book.py

pdf: markdown
	mkdir -p dist
	pandoc build/book.md \
		-o dist/mythes-realites-biomecanique.pdf \
		--toc \
		--number-sections \
		--pdf-engine=xelatex \
		--include-in-header=templates/pandoc-header.tex

clean:
	rm -rf build dist
