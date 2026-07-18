PDF = Content-Keyed-CRDTs.pdf

all: $(PDF)

$(PDF): Content-Keyed-CRDTs.md
	pandoc $< \
		--pdf-engine=xelatex \
		-V geometry:margin=1in \
		-V fontsize=11pt \
		-V colorlinks=true \
		-o $@

clean:
	rm -f $(PDF)

.PHONY: all clean
