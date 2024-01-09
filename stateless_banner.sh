sudo ./bin/masscan \
--stateless-banners \
--probe getrequest \
--ports 80 \
--rate 1000000 \
--retries 0 \
--seed 1 \
--wait 5 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/stateless_result.xml
#--pcap ./results/stateless_result.pcap \
# --noreset2 \
#--interactive \
#--ndjson-status \
