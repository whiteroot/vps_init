#!/bin/bash

vncserver
vncserver -kill :1
vncserver -kill :2
cp xstartup $HOME/.vnc/
vncserver
vncserver -list

