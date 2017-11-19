#! /bin/bash
# Cookie cutter
# Created by: Abishek Murali
# This script creates a sample data science project folder structure

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
mkdir docs data src bin results models

for d in */ ; do
    cd "$d"
    touch .gitkeep
    cd ..
done

touch requirements.txt
touch README.md
touch CITATIONS.md
touch LICENSE.md

echo 'Data science project structure created'
cd ..
