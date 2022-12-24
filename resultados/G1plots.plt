set encoding utf8
# set terminal png size 1280, 720 enhanced font "Alegreya,18"
set terminal pngcairo size 1280, 720 enhanced color dashed font "Alegreya, 14" \
# set terminal pdfcairo enhanced color dashed font "Alegreya, 14" \
# set terminal epslatex color colortext
# rounded size 16 cm, 9.6 cm
set print "-"
set key on
set key bottom right
set auto
set grid
set size 1,1
set macro

# Standard border
set style line 11 lc rgb '#808080' lt 1 lw 3
set border 0 back ls 11
set tics out nomirror

# Standard grid
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12
# unset grid

set style line 1 lc rgb '#E41A1C' pt 1 ps 1 lt 1 lw 1 # red
set style line 2 lc rgb '#377EB8' pt 6 ps 1 lt 1 lw 1 # blue
set style line 3 lc rgb '#4DAF4A' pt 2 ps 1 lt 1 lw 1 # green
set style line 4 lc rgb '#984EA3' pt 3 ps 1 lt 1 lw 1 # purple
set style line 5 lc rgb '#FF7F00' pt 4 ps 1 lt 1 lw 1 # orange
set style line 6 lc rgb '#FFFF33' pt 5 ps 1 lt 1 lw 1 # yellow
set style line 7 lc rgb '#A65628' pt 7 ps 1 lt 1 lw 1 # brown
set style line 8 lc rgb '#F781BF' pt 8 ps 1 lt 1 lw 1 # pink

tlleg = "0.15 0.3 0.6 9 540 1.5 15 90"
tserv = "0.1 0.2 0.4 6 360 1 10 60"

file_exists(file ) = system("[ -f '".file."' ] && echo '1' || echo '0'") + 0

set palette defined ( 0 "red", 1 "green")
set cbrange[0:1]
# color(y) = y >= 0 ? (255*65535) : (255*255)

# set xlabel "Iteración"
# set ylabel "Promedio Esperado"


dir = "graphs"
system "mkdir ".dir

# https://stackoverflow.com/questions/37674787/gnuplot-get-value-of-a-particular-data-in-a-datafile-with-or-without-using-sta
getValue(row,col,filename) = system('awk ''{if (NR == '.row.') print $'.col.'}'' '.filename.'')

# lines = floor(system("wc -l media1-120-0-40.txt"))

set key outside;
set key right bottom;

j = 1
times_max = 0
file_max = 0
sz_file = words(tlleg)
array archivos[sz_file]
do for [tl in tlleg]{
    do for [ts in tserv]{
        name ="incremento-FIJO-Tlleg:".tl."-Tserv".ts
        filename = name.".txt"
        if (file_exists(filename)) {
            if(j<sz_file){
                archivos[j] = filename
            }
            j= j + 1
        }
    }
}
array titulos[sz_file]
titulos[1] = "Horas"
titulos[2] = "Medias Horas"
titulos[3] = "Cuartos de horas"
titulos[4] = "Minutos"
titulos[5] = "Segundos"
titulos[6] = "Décimas de hora"
titulos[7] = "Centésimas de hora"
titulos[8] = "Décimas de segundo"

set title "Variabilidad del PTO(n) según métricas"
outname = dir."/PTO(n)-FIJO.png"
set print "-"
set output outname
plot for[i=1:sz_file-1] archivos[i] u :2 with lp lw 1 title titulos[i], 33 lw 2 lt -1 t "Óptimo real"
unset title

set title "Variabilidad del Q(n) según métricas"
outname = dir."/Q(N)-FIJO.png"
set output outname
plot for[i=1:sz_file-1] archivos[i] u :3 with lp lw 1 title titulos[i], 1.3 lw 2 lt -1 t "Óptimo real"
unset title

j = 1
times_max = 0
file_max = 0
sz_file = words(tlleg)
array archivos[sz_file]
do for [tl in tlleg]{
    do for [ts in tserv]{
        name ="incremento-VARIABLE-Tlleg:".tl."-Tserv".ts
        filename = name.".txt"
        if (file_exists(filename)) {
            if(j<sz_file){
                archivos[j] = filename
            }
            j= j + 1
        }
    }
}

set title "Variabilidad del PTO(n) según métricas"
outname = dir."/PTO(n)-VARIABLE.png"
set output outname
plot for[i=1:sz_file-1] archivos[i] u :2 with lp lw 1 title titulos[i], 33 lw 2 lt -1 t "Óptimo real"
unset title

set title "Variabilidad del Q(n) según métricas"
outname = dir."/Q(N)-VARIABLE.png"
set output outname
plot for[i=1:sz_file-1] archivos[i] u :3 with lp lw 1 title titulos[i], 1.3 lw 2 lt -1 t "Óptimo real"
unset title
