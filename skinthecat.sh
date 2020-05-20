#!/bin/bash

# grep -v grep <- This removes the process that's grepping for tomcat
ps -ef | grep tomcat | grep -v grep | awk '{print $2}' | xargs kill -9

# now call a shell script to delete all the log files