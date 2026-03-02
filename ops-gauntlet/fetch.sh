#!/bin/bash

NAME=$(curl -s https://randomuser.me/api/ | jq -r '.results[0].name.first')
CITY=$(curl -s https://randomuser.me/api/ | jq -r '.results[0].location.city')

echo "<h1>Ops Dashboard</h1><p>Incoming User: $NAME from $CITY</p>" > /home/mihai/enterprise-gauntlet/ops-gauntlet/html/index.html
