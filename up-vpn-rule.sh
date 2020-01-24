#!/bin/bash

PREFIXFILE="$1"
IFACE="$2"
PREF="$3"

PREFIX=$(cat $PREFIXFILE)

ip -6 rule add from $PREFIX lookup $IFACE pref $PREF
