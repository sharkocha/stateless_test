sudo ../bin/zmap3 \
--target-port 443 \
--allowlist-file "../data/china443_281w.txt" \
--blocklist-file "../data/blocklist.conf" \
--rate 1500 \
--retries 0 \
--cooldown-time 5 \
--seed 1  | \
../bin/zgrab2 \
http \
-p 443 \
--use-https \
-o /dev/null
#--user-agent "xxx"
