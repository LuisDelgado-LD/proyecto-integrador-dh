#!/bin/bash
URLNOIP=http://dynupdate.no-ip.com/nic/update
`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"`^C
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/network/interfaces/macs/12:d6:80:78:4f:b7/public-ipv4s && echo ""

