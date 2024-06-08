import subprocess
import sys

def exec_cmd(cmd: str):
    """execute shell command interactively in real-time"""
    subprocess.run(cmd, shell=True, stdin=0, stdout=1, stderr=2)

if __name__ == "__main__":
    rate_array = [1000,
                  2500,
                  5000,
                  10000,
                  25000,
                  50000,
                  100000,
                  250000,
                  500000,
                  750000,
                  1000000,
                  1200000]
                #   240000,
                #   250000,
                #   260000,
                #   270000,
                #   280000,
                #   290000,
                #   300000,
                #   310000,
                #   320000,
                #   330000,
                #   340000,
                #   350000,
                #   360000]
    rate_array.reverse()
        
    for rate in rate_array:
        for i in range(2):
            print(f"\nstart zbanner rate:{rate} turn:{i+1}\n")
            cmd = f"""sudo ./bin/masscan \
--stateless-banners \
--probe getrequest \
--ports 80 \
--rate {rate} \
--retries 0 \
--tx-num 3 \
--seed 1 \
--wait 20 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/stateless_banner_{rate}_{i+1}.xml"""
            exec_cmd(cmd)

    sys.exit(0)

    for rate in rate_array:
        for i in range(2):
            print(f"\nstart masscan banner rate:{rate} turn:{i+1}\n")
            cmd = f"""sudo ./bin/masscan \
--banners \
--hello=http \
--ports 80 \
--rate {rate} \
--retries 0 \
--seed 1 \
--wait 20 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/masscan_banner_{rate}_{i+1}.xml"""
            exec_cmd(cmd)

    for rate in rate_array:
        for i in range(2):
            print(f"\nstart zmap/lzr banner rate:{rate} turn:{i+1}\n")
            cmd = f"""sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate {rate} \
--retries 0 \
--cooldown-time 20 \
--seed 1 \
--dedup-method window \
--output-filter  "success = 1 && repeat = 0" \
--output-fields "saddr,daddr,sport,dport,seqnum,acknum,window" \
--output-module json | \
sudo ./bin/lzr \
--handshakes http \
-sendInterface enx2c16dba62660 \
-f ./results/zmap_lzr_{rate}_{i+1}.json \
2>1 >> ./results/zmap_lzr_{rate}_{i+1}.json"""
            exec_cmd(cmd)

    for rate in rate_array:
        for i in range(2):
            print(f"start zmap/zgrab banner rate:{rate} turn:{i+1}\n")
            cmd = f"""sudo ./bin/zmap \
--target-port 80 \
--allowlist-file "./data/allowlist.conf" \
--blocklist-file "./data/blocklist.conf" \
--rate {rate} \
--retries 0 \
--cooldown-time 20 \
--seed 1 \
--dedup-method window | \
./bin/zgrab2 \
http \
-o ./results/zmap_zgrab_{rate}_{i+1}.json \
2>1 >> ./results/zmap_zgrab_{rate}_{i+1}.json"""
            exec_cmd(cmd)
