##
## An example of a plot with yerror bars
##

# To create the graph use
# gnuplot ex1.gp

## uncomment the next two lines to save plot into a file
# set terminal png  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400
# set output 'ex1.png'

# Set titles of the graph and axis
set style data lines
set title "error represented by yerrorbars"
set xlabel "Instances"
set ylabel "Time"

# plot the file
# restrict the plot to xrange between 0 and 10
# read data from cpu.dat
# use first 3 columns of the file
# set the title of the plot
# connect dots with lines
# AND
# plot the same file, but without title, and only show error bars
# the combination of the two plots gives both a connecting line and yerror bars
plot [0:10] "cpu.dat" using 1:2:3 title "Running time" with lines,  \
     "cpu.dat" using 1:2:3 notitle with yerr
