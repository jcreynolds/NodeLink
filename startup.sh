#!/bin/bash
if [ ! -e "/NodeLink/NodeLink.exe" ]; then
cd /NodeLink
wget http://automationshack.com/Files/NodeLink.exe
fi
/usr/bin/mono /NodeLink/NodeLink.exe &
/bin/bash