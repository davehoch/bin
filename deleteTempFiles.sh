#!/bin/sh
echo deleting tomcat logs
deleteTomcatLogs.sh

echo deleting NetBeans log files
rm -f ~/Library/Application\ Support/NetBeans/11.3/var/log/*
rm -f ~/Library/Application\ Support/NetBeans/12.0/var/log/*
