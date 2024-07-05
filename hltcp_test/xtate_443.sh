sudo ../bin/xtate \
-excludefile ../data/blocklist.conf \
-iL ../data/regions/china_continent20240101-3,4308,1216.txt \
-p 443 \
-wait 20 \
-out list \
-outarg '-noport' \
-o ../data/china443_281w.txt \
-rate 500000
