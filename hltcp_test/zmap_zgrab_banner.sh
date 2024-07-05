sudo ../bin/zmap3 \
--target-port 22 \
--allowlist-file "../data/allowlist.conf" \
--blocklist-file "../data/blocklist.conf" \
--rate 1000 \
--retries 0 \
--cooldown-time 5 \
--seed 1  | \
../bin/zgrab2 \
banner \
-o /dev/null