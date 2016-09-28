reset

set logscale x 2
set grid
set key left
set xlabel 'N'
set ylabel 'time(sec)'
set style fill solid
set title 'Wall-clock time - using clock_gettime() - leibniz'
#set xrange[0:250000]
set yrange[0:]
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot "result_clock_gettime.csv" using 1:2 smooth csplines lw 2 title 'leibniz' ,\
'' using 1:3 smooth csplines lw 2 title 'openmp_2',\
'' using 1:4 smooth csplines lw 2 title 'openmp_4',\
'' using 1:5 smooth csplines lw 2 title 'avx',\
'' using 1:6 smooth csplines lw 2 lc rgbcolor "#F62817" title 'avxunroll' 
