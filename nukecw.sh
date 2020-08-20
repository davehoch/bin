echo nuking CW in .m2

# these folders can be large, so it's better to rename then delete

# rename the folders
mv ~/.m2/repository/com/ca ~/tmp/ca_DeleteMe
mv ~/.m2/repository/com/clearwateranalytics ~/tmp/clearwateranalytics_DeleteMe

# delete the renamed folders async
rm -r ~/tmp/ca_DeleteMe &
rm -r ~/tmp/clearwateranalytics_DeleteMe &
