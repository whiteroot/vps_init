#!/bin/bash

MY_IP="$1"
set -o nounset
set -o errexit

test -z $MY_IP && echo mising my IP parameter && exit 1

init_fw()
{
$1 --flush
$1 -P INPUT DROP
$1 -P OUTPUT ACCEPT
$1 -P FORWARD DROP

$1 -A OUTPUT -o lo -j ACCEPT
$1 -A INPUT -i lo -j ACCEPT

$1 -A OUTPUT -p tcp -j ACCEPT
$1 -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
}

init_fw iptables
iptables -A INPUT -s $MY_IP -j ACCEPT

init_fw ip6tables
