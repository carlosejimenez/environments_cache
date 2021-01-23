#!/bin/bash
FILENAME=com.savecondaenvs.plist
CONDA_CMD=$CONDA_PREFIX/bin/conda
WK_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
LAUNCH_DIR=/Users/$USER/Library/LaunchAgents

echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>
<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">
<plist version=\"1.0\">" > $FILENAME
echo "	<dict>
		<key>Label</key>
		<string>$FILENAME</string>
	
		<key>Program</key>
		<string>$WK_DIR/save_envs.sh</string>
		
	    <key>EnvironmentVariables</key>
    	<dict>
	      <key>CONDA_CMD</key>
		  	<string>$CONDA_CMD</string>
    	</dict>

		<key>RunAtLoad</key>
		<true/>

		<key>StartCalendarInterval</key>
		<dict>
			<key>Hour</key>
			<integer>3</integer>
			<key>Minute</key>
			<integer>0</integer>
		</dict>
		
		<key>WorkingDirectory</key> <!--Necessary for storing output environments in correct place-->
		<string>$WK_DIR</string>

		<key>StandardErrorPath</key> <!-- Optional -->
		<string>$WK_DIR/stderr.log</string>

    	<key>StandardOutPath</key> <!-- Optional -->
		<string>$WK_DIR/stdout.log</string>
	</dict>
</plist>
" >> $FILENAME

cp $FILENAME $LAUNCH_DIR/$FILENAME

launchctl load $LAUNCH_DIR/$FILENAME
