#!/usr/bin/env bash

killall -q polybar
echo "---" | tee -a /tmp/polybar1.log
polybar external >>/tmp/polybar1.log 2>&1 & disown
