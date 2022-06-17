#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 

echo nuking entire m2

# this folder can be huge, so rename, and then delete async
mv ~/.m2/repository ~/tmp/repository-DeleteMe
rm -r ~/tmp/repository-DeleteMe &
