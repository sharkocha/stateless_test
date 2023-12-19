sudo ./bin/masscan \
--stateless-banners \
--ports 80 \
--rate 100 \
--retries 0 \
--seed 1 \
--wait 15 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/stateless_result.xml
# noreset = true