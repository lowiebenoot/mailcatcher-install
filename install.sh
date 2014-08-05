#!/bin/bash

# install mailcatcher
sudo gem install mailcatcher

# start mailcatcher on startup
cat > ~/Library/LaunchAgents/me.mailcatcher.plist << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Label</key>
	<string>me.mailcatcher</string>
	<key>ProgramArguments</key>
	<array>
		<string>sh</string>
		<string>-i</string>
		<string>-c</string>
		<string>$SHELL --login -c "mailcatcher --foreground"</string>
	</array>
	<key>KeepAlive</key>
	<true/>
	<key>RunAtLoad</key>
	<true/>
</dict>
</plist>
EOF