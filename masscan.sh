sudo ./bin/masscan \
--ports 80 \
--rate 1000000 \
--retries 0 \
--seed 1 \
--wait 20 \
--noreset1 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/mas_result.xml
#--pcap ./results/mas_result.pcap \
