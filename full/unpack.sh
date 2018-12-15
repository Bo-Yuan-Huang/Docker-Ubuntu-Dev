#!/usr/bin/expect
spawn unminimize
expect "Would you like to continue?"
send "y\r"
expect "Do you want to continue?"
send "Y\r"

