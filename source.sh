let "seconds = {query} * 60"
sleep $seconds
/usr/bin/osascript <<-EOF
    tell application "System Events"
        activate
        display dialog "Hey there! {query} minutes have elapsed!"
    end tell
EOF
