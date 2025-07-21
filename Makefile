.PHONY: examples clean

CC = latexmk
OUTPUT_DIR = pdf

examples: $(foreach x, main, $x.pdf)

main.pdf: demo/main.tex
	$(CC) demo/main.tex -pdf -output-directory=$(OUTPUT_DIR)

clean:
# 	To clean up LaTeX generated files
	rm -Rf pdf/*.synctex.gz
	rm -Rf pdf/*.aux
	rm -Rf pdf/*.log
	rm -Rf pdf/*.toc
	rm -Rf pdf/*.out
	rm -Rf pdf/*.fdb_latexmk
	rm -Rf pdf/*.fls
	rm -Rf pdf/*.nav
	rm -Rf pdf/*.snm
	rm -Rf pdf/*.vrb
	rm -Rf pdf/*.xdv
	rm -Rf pdf/*.bbl
	rm -Rf pdf/*.blg
	rm -Rf pdf/*.dvi
	rm -Rf pdf/*.bcf
	rm -Rf pdf/*.lot
	rm -Rf pdf/*.lof
	rm -Rf pdf/*.run.xml