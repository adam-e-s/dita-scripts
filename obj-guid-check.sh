#!/usr/bin/bash

for guid in `cat $1`
do grep $guid $2;
done

# # #

