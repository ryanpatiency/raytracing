reset
set ylabel 'time(%)'
set style fill solid
set title 'dot_product() perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'dot_product_count_percent.png'
set boxwidth 0.5

plot "<sed 'G;G' output.txt" i 0 u (column(-2)):1:xtic(2) w boxes ti "Critical" lc rgb "black",\
     "<sed 'G;G' output.txt" i 1 u (column(-2)):1:xtic(2) w boxes ti "High" lc rgb "red" ,\
     "<sed 'G;G' output.txt" i 2 u (column(-2)):1:xtic(2) w boxes ti "Medium" lc rgb "green",\
     "<sed 'G;G' output.txt" i 3 u (column(-2)):1:xtic(2) w boxes ti "Low" lc rgb "blue"
