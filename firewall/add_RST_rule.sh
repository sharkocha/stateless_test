sudo iptables \
-A OUTPUT \
-p tcp \
--tcp-flags RST RST \
-s 192.168.0.159 \
-j DROP