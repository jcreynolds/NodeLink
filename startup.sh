#!/bin/bash
if [ ! -e "/NodeLink/NodeLink.exe" ]; then
cd /NodeLink
wget http://automationsha...es/NodeLink.exe
fi
/usr/bin/mono /NodeLink/NodeLink.exe &
/usr/bin/bash