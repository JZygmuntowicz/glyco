#!/bin/bash

directory="/home/users/twóje_imie/genomy_bakterii"
counter=1

cd "$directory" || exit 1

for file in *; do
    if [ -f "$file" ]; then
        extension="${file##*.}"
        new_name="$counter.$extension"
        mv "$file" "$new_name"
        ((counter++))
    fi
done

