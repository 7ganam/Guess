#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame
{
Righ_answer="$(ls |wc -l)"
echo "what is the number of files in thie directory?"
read input

while [[ $Righ_answer -ne $input ]]
do
    if [[ $input -gt $Righ_answer ]]
    then
        echo "too big"
    else
        echo "too small"
    fi
  echo "what is the number of files in thie directory?"
  read input
done

echo "congrats..this is the right answer"

}

guessinggame
