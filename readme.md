# Number of addresses between two ip's resolver

This lua script can calculate ip count between two given ip's addresses. I.e.
`“10.0.0.0” “10.0.0.50” => 50`
`“10.0.0.0” “10.0.1.0” => 256`
`“20.0.0.10” “20.0.1.0” => 246`
## Usage
To run this program you need to install `lua` binary. Program tested with lua 5.3 version.

`lua main.lua ipv4 20.0.0.10 20.0.1.0`
**explanation:**
`lua` -> lua binnary
`main.lua` -> main script/entry point for execution
`ipv4` -> operation type. Possible values: `ipv4` `ipv6`
`20.0.0.10` -> first ip
`20.0.1.0` -> second ip

## Insights

In low level, ip  address is binary number. In ipV4 case we can simply convert both ip's to decimal number, and find difference, to determine how many ips is in between. However in ipV6 case ip address consists of 128 bits. And most hardware and lua support 64 bit numbers. So we need to use/write some `"bigInt" ` library, that can operate big integers as string., or find other aproach to determine ip's count in between. Currently ipV6 operation type is not implemented.