pdflatex main.tex
makeindex main.glo -s main.ist -t main.glg -o main.gls
pdflatex main.tex
mv main.pdf rapport_activité_Nathanael_Jourdane.pdf
for f in `find . -maxdepth 1 -type f -prune | grep -vE '.tex$|.pdf$|.sty$|.sh$'`
do
	echo "delete file" $f
	rm $f
done
