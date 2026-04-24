$pdf_mode = 1;

$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -output-directory=build %S';

$out_dir = 'build';
$aux_dir = 'build';

$cleanup_includes_cusdep_generated = 1;
$clean_ext .= ' mtc*';

$makeindex = 'makeindex %O -o %D %S';

$bibtex = 'biber %O %B';
add_cus_dep('bib', 'bbl', 0, 'biber');

$recorder = 1;

$success_cmd = 'cp build/%B.pdf ./%B.pdf';