#!/bin/bash
if [ ! -e "/tmp/NodeLink/NodeLink.exe" ]; then
cd /NodeLink
wget http://automationshack.com/Files/NodeLink.exe
fi
mono /tmp/NodeLink/NodeLink.exe &
/bin/bash
