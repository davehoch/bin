echo nuking entire m2

# this folder can be huge, so rename, and then delete
mv ~/.m2/repository ~/.m2/repository-DeleteMe
rm -r ~/.m2/repository-DeleteMe
