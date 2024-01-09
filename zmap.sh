sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--retries 0 \
--seed 1 \
--cooldown-time 20 \
--no-header-row \
--output-fields "saddr,sport,success,classification" \
--output-file ./results/zmap_result.csv \
--rate 250000
# --dedup-window-size 10000 \
# --dedup-method none \
#--dedup-method window \
