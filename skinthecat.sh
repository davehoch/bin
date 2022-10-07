#!/usr/bin/env bash
set -e          # Exit immediately if a pipeline returns a non-zero status.
set -u          # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully.

# Could this be written more simply using pgrep and/or pkill?

# grep -v grep <- This removes the process that's grepping for tomcat
echo "killing tomcat"
ps -ef | grep tomcat | grep -v grep | awk '{print $2}' | xargs kill -9

# now call a shell script to delete all the log files
deleteTomcatLogs.sh

echo "done"
