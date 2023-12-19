sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate 100 \
--retries 0 \
--cooldown-time 15 \
--seed 1 \
--dedup-method window | \
./bin/zgrab2 \
http \
-o ./results/zmap_zgrab_result.json \
#--user-agent "xxx"