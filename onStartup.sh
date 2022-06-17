#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 


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