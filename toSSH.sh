#! /usr/bin/expect -f
spawn scp -rp ./ REMOTE_URL

expect {
  -re ".*es.*o.*" {
    exp_send "yes\r"
    exp_continue
  }
  -re ".*sword.*" {
    exp_send "PASSWORD\r"
  }
}
interact

spawn git push

expect {
-re ".*sername.*" {
exp_send "USERNAME\r"
exp_continue
}
-re ".*sword.*" {
exp_send "PASSWORD\r"
}
}

interact
