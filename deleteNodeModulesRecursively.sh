#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 

for item in `ls`; do
    if [[ -d $item ]]; then
        cd $item
        if [[ -d node_modules ]]; then
            echo "rm -rf $item/node_modules/"
            rm -rf node_modules/
        fi
        if [[ -e pom.xml ]]; then
            echo "Maven Clean on $item"
            mvn -q clean
        fi
        cd ..
    fi
done
