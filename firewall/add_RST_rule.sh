sudo iptables \
-A OUTPUT \
-p tcp \
--tcp-flags RST RST \
-s 112.31.213.24 \
-j DROP
