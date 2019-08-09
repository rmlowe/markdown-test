# Inspired by https://mrjoe.uk/convert-markdown-to-word-document/

all: docx pdf

docx:
	pandoc README.md -s -o README.docx

pdf:
	# PDF exported from Word looks better
	pandoc README.md -s -o README.pdf

clean:
	rm *.docx *.pdf
