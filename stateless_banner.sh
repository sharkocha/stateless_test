sudo ./bin/zbanner \
-p80 \
--stateless-banners \
--probe getrequest \
--capture stateless \
--rate 180000 \
--retries 0 \
--seed 2 \
--wait 100 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/stateless_result.xml
#--pcap ./results/stateless_result.pcap \
# --noreset2 \
#--interactive \
#--ndjson-status \
