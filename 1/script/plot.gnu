set terminal pdf
set output 'diagram.pdf'

set xlabel "Zeit (in Sekunden)"
set ylabel "TCP Sequenznummer"
set grid

plot "dump.txt" using 1:2 linestyle 1 title "TCP Diagramm"
