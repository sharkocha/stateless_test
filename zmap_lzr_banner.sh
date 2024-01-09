sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate 6000 \
--retries 0 \
--cooldown-time 5 \
--seed 2 \
--output-filter  "success = 1 && repeat = 0" \
--output-fields "saddr,daddr,sport,dport,seqnum,acknum,window" \
--output-module json | \
sudo ./bin/lzr \
--handshakes http \
-sendInterface enx2c16dba62660 \
-f ./results/zmap_lzr_banner_result.json
