sudo ./bin/masscan \
--ports 80 \
--rate 100 \
--retries 0 \
--seed 1 \
--wait 15 \
--noreset \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/mas_result.xml