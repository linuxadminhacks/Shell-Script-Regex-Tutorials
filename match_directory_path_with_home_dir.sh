#!/bin/bash

# Check if the first input argument is empty
# Run program as ./script_name  /path/to/directory
# So $1 = /path/to/directory
if [[ -z "$1" ]]; then
  echo "Error: No path provided."
  exit 1
fi

# Get the home directory of the current user
current_home=$HOME

# Get the input path
input_path=$1

# Define the regex pattern
pattern="^\/(?:[^\/]+\/?)*$"

# Check if the input path matches the regex pattern
if [[ $input_path =~ $pattern ]]; then  # if-1
 # Check if the directory exists
 if [ -d "$input_path" ]; then  # if-2
   # Check if the input path is equal to the home directory of the current user
   if [[ $input_path -ef $current_home ]]; then # if - 3
       # Run your code here
       echo "The input path is the home directory of the current user."
   else  # if - 3
       echo "The input path is not the home directory of the current user."
   fi  # end of if - 3
 else  # else if-2
   echo "The directory does not exist."
 fi  # end of if-2
else  # else if-1
 echo "The input path does not match the regex pattern."
fi # end of if-1
