#!/bin/bash

# Defines a variable named chars that contains a set of characters
# [:alnum:] represents all alphanumeric characters
# [:space:] represents all whitespace characters
# [:punct:] represents all punctuation characters
chars='[:alnum:][:space:][:punct:]'

# reads data from the /dev/urandom file.
# and with `|` pipe symbol
# send to the input of `tr` command,
# with `tr` command filters out all characters,
# except those specified in the chars variable.
# using the `fold` coomand wraps the input lines,
# to a maximum width of 80 characters.
# using the `head` command,
# reads and displays only the first line of the input.
while true; do
    line=$(cat /dev/urandom | tr -dc "$chars" | fold -w 80 | head -n 1)
    # append the generated line to a file
    echo "$line" >> random_file.txt
    # checks if the $line variable contains a dot (.)
    if [[ $line == *'.'* ]]; then
        break
    fi
done
