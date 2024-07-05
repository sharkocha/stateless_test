sudo ../bin/xtate \
-excludefile ../data/blocklist.conf \
-iL ../data/regions/china_continent20240101-3,4308,1216.txt \
-p 179 \
-rate 200000 \
-scan tcp-state \
-probe get-state \
-print queue \
-wait 40 \
-out null
