sudo nmap \
-n -Pn -sS \
-p80 \
-iL ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
--randomize-hosts \
-T5 \
-oX ./results/nmap_banner_result.xml \
--script=http-title \
--min-rate 100000
#--max-retries 0 \
