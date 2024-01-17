sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate 1000 \
--retries 0 \
--cooldown-time 5 \
--seed 1  | \
./bin/zgrab2 \
http \
-o /dev/null \
#--user-agent "xxx"
