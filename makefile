# simply makefile for testing the travis setup

source := file1.txt
inter:= $(subst .txt,.md,$(source))
output:= $(subst .txt,.out,$(source))


.INTERMEDIATE: $(inter)
.PHONY: all clean


all: $(output)

%.out: %.md
	cp $^ $@

%.md: %.txt
	cp $^ $@


clean:
	rm -rf $(output) $(inter)
