#!/bin/bash

mkdir -p /data/fara
aria2c -x 16 -i urls.txt -d /data/fara --continue

