#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 

echo nuking NetBeans cache dir

# this folder can be huge, so rename, and then delete async
mv ~/Library/Caches/NetBeans ~/tmp/NetBeansCache_DeleteMe
rm -r ~/tmp/NetBeansCache_DeleteMe &
