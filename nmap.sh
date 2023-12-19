sudo nmap \
-n -Pn -sS \
-p80 \
-iL ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
--randomize-hosts \
-T5 \
-oG ./results/nmap_result.txt
#--min-rate 100 \
#--max-retries 0 \