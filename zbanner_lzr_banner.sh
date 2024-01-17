sudo ./bin/zbanner \
--ports 80 \
--rate 10000 \
--retries 0 \
--seed 1 \
--wait 20 \
--feedlzr \
--noreset1 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf | \
sudo ./bin/lzr \
--handshakes http \
-sendInterface enx2c16dba62660 \
-f ./results/zbanner_lzr_banner_result.json
