sudo ../bin/xtate \
-p 443 \
-iL ../data/regions/china_continent20240101-3,4308,1216.txt \
-excludefile "../data/blocklist.conf" \
--rate 1000 \
-out list \ 
-outarg "-noport" \
 | \
../bin/zgrab2 \
http \
--use-https \
-o /dev/null
#--user-agent "xxx"
