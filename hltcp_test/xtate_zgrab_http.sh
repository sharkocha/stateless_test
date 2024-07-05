sudo ../bin/xtate \
-p 80 \
-iL ../data/regions/china_continent20240101-3,4308,1216.txt \
-excludefile "../data/blocklist.conf" \
--rate 1000 \
-out list \ 
-outarg "-noport" \
 | \
../bin/zgrab2 \
http \
-o /dev/null