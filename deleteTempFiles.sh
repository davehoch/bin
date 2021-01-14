#!/bin/sh
deleteTomcatLogs.sh

echo deleting NetBeans log files
rm -f ~/Library/Application\ Support/NetBeans/12.2/var/log/*
