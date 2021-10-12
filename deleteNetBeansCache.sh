echo nuking NetBeans cache dir

# this folder can be huge, so rename, and then delete async
mv ~/Library/Caches/NetBeans ~/tmp/NetBeansCache_DeleteMe
rm -r ~/tmp/NetBeansCache_DeleteMe &
