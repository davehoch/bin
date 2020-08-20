echo nuking entire m2

# this folder can be huge, so rename, and then delete async
mv ~/.m2/repository ~/tmp/repository-DeleteMe
rm -r ~/tmp/repository-DeleteMe &
