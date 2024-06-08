sudo ./bin/masscan \
--ports 80 \
--rate 180000 \
--retries 0 \
--seed 1 \
--wait 15 \
--noreset \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/mas_result.xml
#--pcap ./results/mas_result.pcap \
