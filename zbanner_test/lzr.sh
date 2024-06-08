<"./data/lzrlist.conf" pv \
-L 200000 \
-l \
--quiet | \
sudo ./bin/lzr \
-gatewayMac f0:98:38:b1:e4:05 \
-sourceIP 112.31.213.24 \
-sendSYNs \
--handshakes http \
-sendInterface enx2c16dba62660 \
-f ./results/lzr_result.json
