#!/bin/bash

# Created by Jeremy Bogacz on 10/6/2021

# CPE 422 homework 4 question 1

# Set the CPU frequency to 600MHz
sudo cpufreq-set -f 600MHz

# Display the CPU information
cpufreq-info

# Set the variable location to the home address then display it
location=/home/debian/

echo
echo $location

# Set the variable items to the number of files in location and display it
items=$(ls $location | wc -l)

echo
echo "$items"
echo

# Add this file to the path variable, save it to a text file, send the contents to the screen
PATH=$PATH:$HOME/CPE422/
export PATH

echo $PATH > newPathValue.txt

cat newPathValue.txt

