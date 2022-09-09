#!/bin/bash

# man_view - simple man page viewer

while true; do
  echo -en "\nPlease enter a command name (q to quit) -> "
  read
  [[ "$REPLY" == "q" ]] && break
  [[ -n "$REPLY" ]] && { man $REPLY || sleep 3; }
  clear
done

