reset

set xlabel 'N'
set ylabel 'time(sec)'
set style fill solid
set title 'Wall-clock time - using clock_gettime()'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot "test" using 1:2 smooth csplines lw 2 title 'fjaskl' ,\
'' using 1:3 smooth csplines lw 2 title 'fjaskl',\
'' using 1:3 with points title 'point',\
'' using 1:2 with points title 'point'
