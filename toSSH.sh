#! /usr/bin/expect -f
spawn scp files url
# expect "Password:"
# send "hongying@3\n"

expect {
  -re ".*es.*o.*" {
    exp_send "yes\r"
    exp_continue
  }
  -re ".*sword.*" {
    exp_send "password\r"
  }
}
interact