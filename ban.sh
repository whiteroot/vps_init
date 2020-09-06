#!/bin/bash

test x$1 = x && echo missing parameter && exit 1

cpt=`expr "$1" : '.*:.*:.*:.*' \| 0`

if test $cpt -gt 0
then
  ip6tables -I INPUT -s $1 -j DROP
else
  iptables -I INPUT -s $1 -j DROP
fi

echo "$1 banned"

