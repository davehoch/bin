#!/bin/sh

# kerberos init for database tools
# when the password is updated, call `kinit --keychain` to reset it
kinit &

# update tldr's info
tldr --update &

# update brew's database of formulas
brew update &

deleteTempFiles.sh &
