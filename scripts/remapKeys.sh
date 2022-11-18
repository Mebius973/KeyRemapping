#!/bin/bash

FULL_PATH=$(realpath $0)
SCRIPT_PATH=$(dirname $FULL_PATH)

for f in $SCRIPT_PATH/keyboards/*.sh; do
  bash "$f" 
done