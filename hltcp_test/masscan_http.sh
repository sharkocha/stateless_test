sudo ../bin/masscan \
--excludefile ../data/blocklist.conf \
-iL ../data/regions/china_continent20240101-3,4308,1216.txt \
-p 80 \
--rate 2000000 \
--banners \
--wait 40 \
-oX tt.xml
