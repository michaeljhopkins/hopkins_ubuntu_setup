#!/usr/bin/env bash

agent="[blackfire]
ca-cert=
collector=https://blackfire.io
log-file=stderr
log-level=1
server-id=63aa19e2-f061-4b92-9214-ae36f786a46e
server-token=8502e9405e443b7ed816d2ed6e77444947c5b9c692de420fff5eece98364083c
socket=unix:///var/run/blackfire/agent.sock
spec=
"

client="[blackfire]
ca-cert=
client-id=e86b591e-dff1-4f75-998a-48df8295854f
client-token=7716207edd1e8e1c51ebfe452bb1d50ddda15a92775f8d129d0dcbf70237c553
endpoint=https://blackfire.io
timeout=15s
"

echo "$agent" > "/etc/blackfire/agent"
echo "$client" > "/home/m/.blackfire.ini"

service php5-fpm restart
service blackfire-agent restart
