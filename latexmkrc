# Build with: latexmk main.tex   (or `make`)
$pdf_mode = 1;
$out_dir = 'build';
$bibtex_use = 2;          # run biber when needed, keep .bbl on clean
$pdflatex = 'pdflatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';
