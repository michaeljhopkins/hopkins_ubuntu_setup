#!/usr/bin/env bash

agent="[blackfire]
ca-cert=
collector=https://blackfire.io
log-file=stderr
log-level=1
server-id=
server-token=
socket=unix:///var/run/blackfire/agent.sock
spec=
"

client="[blackfire]
ca-cert=
client-id=
client-token=
endpoint=https://blackfire.io
timeout=15s
"

echo "$agent" > "/etc/blackfire/agent"
echo "$client" > "/home/m/.blackfire.ini"

service php5-fpm restart
service blackfire-agent restart
