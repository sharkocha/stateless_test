sudo ./bin/zbanner \
--ports 80 \
--rate 180000 \
--retries 0 \
--seed 1 \
--tx-num 5 \
--wait 15 \
--noreset1 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/zbanner_result.xml
#--pcap ./results/mas_result.pcap \
