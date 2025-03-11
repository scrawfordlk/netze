set terminal pngcairo enhanced font 'Arial,12' size 1000,500
set output 'output.png'

set xlabel "Zeit (s)"
set ylabel "Sequenznummern"
set title "TCP Sequence Number Over Time"
set grid

plot "dump.txt" using 1:2 linestyle 1 title "TCP Sequence"
