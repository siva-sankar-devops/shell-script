#!/bin/bash

is_palindrome() {
    local text="$1"
    local cleaned_text=$(echo "$text" | tr -d -c '[:alnum:]' | tr '[:upper:]' '[:lower:]')
    local reversed_text=$(echo "$cleaned_text" | rev)
    
    if [ "$cleaned_text" = "$reversed_text" ]; then
        echo "Palindrome"
    else
        echo "Not a palindrome"
    fi
}

echo -n "Enter a word or phrase: "
read word_or_phrase

result=$(is_palindrome "$word_or_phrase")
echo "'$word_or_phrase' is $result."
