echo nuking NetBeans 12.2 cache dir

# this folder can be huge, so rename, and then delete async
# todo - rm everything under /NetBeans/*
mv ~/Library/Caches/NetBeans/12.2 ~/tmp/NetBeansCache_DeleteMe
rm -r ~/tmp/NetBeansCache_DeleteMe &
