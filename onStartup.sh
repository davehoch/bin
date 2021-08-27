#!/bin/sh

# kerberos init for database tools
# when the password is updated, call `kinit --keychain` to reset it
kinit

deleteTempFiles.sh
