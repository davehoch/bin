#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 

echo nuking CW in .m2

# these folders can be large, so it's better to rename then delete

# rename the folders
mv ~/.m2/repository/com/ca ~/tmp/ca_DeleteMe
mv ~/.m2/repository/com/clearwateranalytics ~/tmp/clearwateranalytics_DeleteMe

# delete the renamed folders async
rm -r ~/tmp/ca_DeleteMe &
rm -r ~/tmp/clearwateranalytics_DeleteMe &
