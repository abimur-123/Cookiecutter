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

#https://stackoverflow.com/a/3231821/5624220
#Check if directory exists. Overwrite or exit based on that.
if [ -d "$root" ]; then
  echo 'Directory already exists!'
  read -p "Do you want to overwrite this folder?<Yes/No> " prompt
    if [[ $prompt == "y" || $prompt == "Y" || $prompt == "Yes" || $prompt == "yes" ]]
    then
      rm -rf $root
    else
      echo "Exiting program"
      exit 0
    fi
fi

mkdir $root
cd $root
mkdir docs data scripts bin results models #add folders

#to ensure subdirectories are not ignored in github
for d in */ ; do
    cd "$d"
    touch .gitkeep
    cd ..
done

touch requirements.txt
touch citations.md
touch LICENSE.md
touch .gitignore
touch contributions.md
touch conduct.md

echo "# $root" >> README.md

echo 'Data science project structure created'
cd ..
