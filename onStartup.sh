#!/bin/sh

deleteTempFiles.sh

# kerberos init for database tools
# when the password is updated, call `kinit --keychain` to reset it
echo initializing kinit
kinit

# update tldr's info
echo updating tldr
tldr --update

# update brew's database of formulas
echo updating brew
brew doctor
brew update
brew cleanup