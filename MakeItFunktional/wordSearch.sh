#!/bin/bash
sentence="This task is rather hard. Isnt it? It is"
echo "Enter the word you want to search for in the sentence:"
read search_word

count=$(grep -o -i "$search_word" <<< "$sentence" | wc -l)

if [[ "$sentence" == *"$search_word"* ]]; then
    echo "The word is present in the sentence. It occurs $count time(s)."
else
    echo "The word is not present in the sentence."
fi