sudo time ../bin/masscan-ng \
--excludefile ../data/blocklist.conf \
-iL ../data/china443_281w.txt \
-p 443 \
--rate 20000 \
--banners \
--dynamicssl \
--num-handle-threads 4 \
--wait 40 \
-oX tt.xml
