SOURCES = $(wildcard *.Rmd)
TARGET = $(addsuffix .odt, $(basename $(SOURCES)))

all: $(TARGET)

%.odt: %.Rmd
	pandoc -D latex > latex.template
	pandoc -V -s -o $@ $<

clean:
	rm -f *.pdf *.odt
