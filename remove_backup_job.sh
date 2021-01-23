#!/bin/bash
FILENAME=com.savecondaenvs.plist
LAUNCH_DIR=/Users/$USER/Library/LaunchAgents

launchctl unload $LAUNCH_DIR/$FILENAME
