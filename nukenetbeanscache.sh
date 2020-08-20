echo nuking NetBeans 12.0 cache dir

# this folder can be huge, so rename, and then delete async
mv ~/Library/Caches/NetBeans/12.0 ~/tmp/NetBeansCache_DeleteMe
rm -r ~/tmp/NetBeansCache_DeleteMe &
