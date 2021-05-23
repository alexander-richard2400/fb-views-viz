#!/bin/bash

currentUser=$(cat source.txt | grep '<title>' | sed 's/<title>//g' | sed 's/<\/title>//g')
currentList=$(cat source.txt | grep buddy_id | sed 's/.*\:\[{//' | sed 's/}}},/\n/g' | sed 's/"status.*"name":"//g' | sed 's/",".*//g' | sed 's/{//g' | sed 's/ /_/g')
idList=$(cat source.txt | grep buddy_id | sed 's/.*\:\[{//' | sed 's/}}},/\n/g' | sed 's/"status.*"buddy_id":"//g' | sed 's/",".*//g' | sed 's/{//g' | sed 's/ /_/g')
timestamp=$(date '+%d/%m/%Y %H:%M:%S')

i=1
for viewer in $currentList
do
    currentId=$(echo "$idList" | sed $i'q;d')
    echo "$timestamp $viewer www.facebook.com/$currentId $currentUser" >> log/views.log
    echo "$timestamp,$viewer,www.facebook.com/$currentId,$currentUser" >> views.csv
    i=$((i+1))
done

# Cleanup
echo -n "" > source.txt