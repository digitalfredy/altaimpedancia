set terminal png
set output "filtro.png"

set xlabel "Hertz"
set ylabel "Voltios"
set grid
plot "filtro.dat" using 1:2 title "" with lines
