#!/usr/bin/env bash

SINK_BLACKLIST=("easyeffects_sink" "alsa_output.platform-pcspkr.mono-fallback")
SOURCE_BLACKLIST=()

nodeType="$1"
if [ "x$nodeType" == "xsink" ]; then
  nodeUserCmdType="sink-input"
elif [ "x$nodeType" == "xsource" ]; then
  nodeUserCmdType="source-output"
else
  echo "Invalid node type"
  exit
fi
nodes=()
curNodeName=$(pactl get-default-$nodeType)
i=0
while read -r node_info; do
  index=$(echo "$node_info" | cut -f1)
  name=$(echo "$node_info" | cut -f2)

  # If the sink's name is the default sink's name, set curSink to this sink's index
  if [ "$curNodeName" = "$name" ]; then curNodeIdx=$i; fi

  # do not use if it is a monitor
  if [ "$nodeType" == "source" ] && echo $name | grep -q ".monitor$"; then
    continue
  fi

  # If it's in the blacklist, continue the main loop. Otherwise, add
  # it to the list.
  for node in "${SINK_BLACKLIST[@]}"; do
    if [ "$node" == "$name" ]; then
      echo 1
      continue 2
    fi
  done

  nodes[$i]="$index"
  ((i++))
done < <(pactl list short ${nodeType}s)

# If there are no nodes to switch to, nothing is done
if [ ${#nodes[@]} -le 1 ]; then exit -1; fi

# go to the next node in the list or to the first if there is no next node
newNode=${nodes[$((($curNodeIdx + 1) % ${#nodes[@]}))]}

# The new node is set as the default
pactl set-default-$nodeType "$newNode"

# Move all audio threads to new node
#inputs=$(pactl list short ${nodeUserCmdType}s | cut -f 1)
#for user in $users; do
#    pactl move-${nodeUserCmdType} "$user" "$newNode"
#done
