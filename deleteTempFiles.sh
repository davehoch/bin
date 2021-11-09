#!/bin/sh
deleteTomcatLogs.sh

echo deleting NetBeans log files
rm -f ~/Library/Application\ Support/NetBeans/*/var/log/*
