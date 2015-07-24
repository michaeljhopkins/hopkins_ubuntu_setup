#!/usr/bin/env bash
touch ./output.log
chmod 777 ./output.log
. ./_.sh | tee ./output.log
