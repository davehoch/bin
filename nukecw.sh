echo nuking CW in .m2

# these folders can be large, so it's better to rename then delete

# rename the folders
mv ~/.m2/repository/com/ca ~/.m2/repository/com/ca-DeleteMe
mv ~/.m2/repository/com/clearwateranalytics ~/.m2/repository/com/clearwateranalytics-DeleteMe

# delete the renamed folders
rm -r ~/.m2/repository/com/ca-DeleteMe
rm -r ~/.m2/repository/com/clearwateranalytics-DeleteMe
