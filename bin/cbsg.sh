#!/bin/bash
# this script invokes the cbsg site toy and pulls a single line randomly out of the resulting html

curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo '^<li>.*</li>' | sed s,\</\\?li\>,,g | shuf -n 1