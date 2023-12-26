# stateless_test

Experiment for stateless banner grab.

## Dependencies

Binaries need to compiled in `bin\`:

- [Zmap](https://github.com/zmap/zmap)
- [LZR](https://github.com/stanford-esrg/lzr)
- [ZGrab2](https://github.com/zmap/zgrab2)
- [Masscan with stateless-banner mode](https://github.com/lfishRhungry/masscan-learn/tree/stateless)

[Nmap](https://nmap.org/) must to be installed in your Linux.

## Dataset Pre-processing

Some useful command for preprocessing [dataset](https://ip.bczs.net/).

Extract CIDR of carrier:

```
awk 'NR>2 {print $4}' china_telecom.tsv > china_telecom.txt
```

Calc IPs sum of carrier:

```
awk 'NR>2 {sum+=$4} END{print sum}' china_telecom.tsv
```

Convert IP range of region into CIDR and extract:

```
awk -v OFS=":" 'NR>3 {print $1,$2}' shandong_jinan.tsv | xargs netmask -c | sed 's/^[ \t]*//g' > shandong_jinan.txt
```