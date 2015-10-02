#!/bin/bash

# this script demonstrates using special variables

echo 'My pid ($$) is ' $$
echo 'My command ($0) was ' `basename $0`
echo 'I had ($#) ' $# 'things on my command line'
echo "They were: $@"
echo "The first word on my command line was: $1"
echo "The second word on my command line was: $2"
cd "$1"
echo "The change directory to $1 produced status $?"