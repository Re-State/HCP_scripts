#!/bin/bash

subjectlist=subjectlist.txt  # text file with subject numbers of participants you want to download images from

while read -r subject;
do

aws s3 cp s3://hcp-openaccess/HCP_1200/$subject/T1w/T1w_acpc_dc_restore.nii.gz  ./$subject"_T1w_acpc_dc_restore.nii.gz" # decide what files to download, their download location and name of downloaded files.

done < $subjectlist
