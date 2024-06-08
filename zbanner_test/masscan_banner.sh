sudo ./bin/masscan \
--banners \
--ports 80 \
--hello=http \
--rate 1000000 \
--retries 0 \
--seed 1 \
--wait 5 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/masscan_banner_result.xml \
#--capture title
#--pcap ./results/masscan_banner_result.pcap \
# noreset = true
#--ndjson-status \
