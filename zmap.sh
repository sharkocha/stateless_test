sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate 100 \
--retries 0 \
--seed 1 \
--cooldown-time 15 \
--dedup-method window \
--no-header-row \
--output-fields "saddr,sport,success,classification" \
--output-file ./results/zmap_result.csv
# --dedup-window-size 10000 \
# --dedup-method none \
