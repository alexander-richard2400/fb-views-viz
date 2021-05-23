#!/bin/bash

currentUser=$(cat sample.txt | grep '<title>' | sed 's/<title>//g' | sed 's/<\/title>//g')
currentList=$(cat sample.txt | grep buddy_id | sed 's/.*\:\[{//' | sed 's/}}},/\n/g' | sed 's/"status.*"name":"//g' | sed 's/",".*//g' | sed 's/{//g' | sed 's/ /_/g')
timestamp=$(date '+%d/%m/%Y %H:%M:%S');

for viewer in $currentList
do
    echo "$timestamp $viewer $currentUser" >> views.log
done


