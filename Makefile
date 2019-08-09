# Inspired by https://mrjoe.uk/convert-markdown-to-word-document/

all: docx pdf

docx:
	mkdir -p target
	pandoc README.md -s -o target/README.docx --reference-doc=custom-reference.docx

pdf:
	# PDF exported from Word looks better
	mkdir -p target
	pandoc README.md -s -o target/README.pdf

clean:
	rm target/*.*
