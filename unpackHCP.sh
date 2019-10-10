#!/bin/bash

# Script that unzips HCP datafiles and generates subjectlist that can be used for running the HCP scripts



# Move all HCP zip files and script to destination folder and run script 

ls *.zip > filelist.txt # list all zip files in folder in txt file


for i in $(cat filelist.txt)  #unpack zipfiles in folder 
do
   echo "Unpacking $i"
   tar -xvpf $i

done

mkdir zipfiles # make folder to store HCP zip files in after they are unzipped
 
mv *.zip zipfiles *.zip.md5   # move zip files to folder zipfiles.

rm filelist # remove filelist.txt


ls | grep -E '^[0-9]+$' > subjectlist.txt # Make subjectlist.txt to use in HCP processing scripts
