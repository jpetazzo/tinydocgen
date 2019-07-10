pdf: $(patsubst %.yaml,%.pdf,$(wildcard *.yaml))

%.pdf: %.yaml mou.j2
	j2 mou.j2 $< | markdown2 | weasyprint - $@
