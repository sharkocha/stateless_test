sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate 100 \
--retries 0 \
--cooldown-time 15 \
--seed 1 \
--dedup-method window \
--output-filter  "success = 1 && repeat = 0" \
--output-fields "saddr,daddr,sport,dport,seqnum,acknum,window" \
--output-module json | \
sudo ./bin/lzr \
--handshakes http \
-sendInterface ens160 \
-f ./results/zmap_lzr_banner_result.json