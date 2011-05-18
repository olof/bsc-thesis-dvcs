clear
reset

set terminal png
set output "vcs-prof.png"

set title ""
set ylabel "Frequency"
set xlabel "Proficiency"

set style data histogram
set style histogram cluster gap 1
set yrange [0:10]
set ytics 1

set grid

set style fill solid border 0.5

plot "vcs-prof" using 2:xticlabel(1) t "VCS in general", "vcs-prof" using 3:xticlabel(1) t "Distributed VCSs"