import subprocess
import sys

def exec_cmd(cmd: str):
    """execute shell command interactively in real-time"""
    subprocess.run(cmd, shell=True, stdin=0, stdout=1, stderr=2)

if __name__ == "__main__":
    retry_array = [0,
                   1,
                   2,
                   3,
                   4,
                   5,
                   6,
                   7,
                   8,
                   9,
                   10,
                  ]
        
    for retry in retry_array:
        for i in range(3):
            print(f"\nstart zbanner retry:{retry} turn:{i+1}\n")
            cmd = f"""sudo ./bin/masscan \
--stateless-banners \
--probe getrequest \
--ports 80 \
--rate 1000000 \
--retries {retry} \
--tx-num 3 \
--seed 1 \
--wait 40 \
--includefile ./data/allowlist.conf \
--excludefile ./data/blocklist.conf \
-oX ./results/stateless_banner_retry_{retry}_{i+1}.xml"""
            exec_cmd(cmd)

    sys.exit(0)