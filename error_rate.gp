reset

set logscale x 2
set grid
set key right
set xlabel 'N'
set ylabel 'time(sec)'
set style fill solid
set title 'leibniz_error_rate'
#set xrange[0:250000]
#set yrange[0:]
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot "result_clock_gettime.csv" using 1:2 smooth csplines lw 2 title 'leibniz_error_rate' 
