#!/bin/bash

PREFIXFILE="$1"
IFACE="$2"

PREFIX=$(cat $PREFIXFILE)

ip -6 rule del from $PREFIX lookup $IFACE
