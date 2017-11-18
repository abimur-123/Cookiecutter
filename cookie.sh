#! /bin/bash
# Cookie cutter
# Created by: Abishek Murali
# This script takes a csv file as input and outputs columns and rows in a given range

echo "Do you want to create project in this $PWD folder?(yes/no)"
read choice

if [[ "$choice" = "no" ]]; then
  echo "Please enter an absolute pathway"
  read dir
  cd $path
fi
pwd

echo "Please enter the project name"
read root

if [ -d "$root" ]; then
  echo 'Directory already exists!'
  echo 'Exit program'
  exit
fi

mkdir $root
cd $root
mkdir doc data src bin results

echo "" > requirement.txt
echo "" > README.md

echo 'Folders created.'
cd ..
