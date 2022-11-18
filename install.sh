#!/bin/bash

SCRIPT_PATH=$HOME/.remapKeys

if [[ -d "$SCRIPT_PATH" ]]
then
    echo "$SCRIPT_PATH exists on your filesystem."
else 
    mkdir $SCRIPT_PATH
fi

cp -R scripts/* $HOME/.remapKeys/

cp com.local.KeyRemapping.plist $HOME/Library/LaunchAgents/

if [[ "$(launchctl list | grep -c KeyRemapping)" != 0 ]];
then
    launchctl unload -w $HOME/Library/LaunchAgents/com.local.KeyRemapping.plist
fi

launchctl load -w $HOME/Library/LaunchAgents/com.local.KeyRemapping.plist

# Hack for keypad dot being translate as colon with french input method
BINDING_PATH="$HOME/Library/KeyBindings"

if [[ -d "$BINDING_PATH" ]]
then
    echo "$BINDING_PATH exists on your filesystem."
else 
    mkdir $BINDING_PATH
fi

BINDING_DICT="$BINDING_PATH/DefaultKeyBinding.dict"

if [[ -f "$BINDING_DICT" ]]
then
    echo "$BINDING_DICT already exists on your filesystem. Aborting"
    exit
else
    touch BINDING_DICT
    echo '{"#," = ("insertText:", ".");}' > $BINDING_DICT
fi
