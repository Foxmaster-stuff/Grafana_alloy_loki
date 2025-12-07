#!/bin/bash

find /var/log/FW/**/ -maxdepth 1 -type f -size 0 -delete
find /var/log/FW/**/ -name "*.*" -mtime +1 -delete
