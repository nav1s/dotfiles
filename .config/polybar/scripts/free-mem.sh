#!/bin/sh
total_memory=$(free -h  |  grep Mem: | awk '{print $3"B"}' | awk '{print substr($0, 0, length($0)-3) " " substr($0, length($0)-2, length($0)) }')
used_memory_percent=$(free | grep Mem | awk '{print int($3/$2 * 100.0)}' )

echo $total_memory $used_memory_percent%

