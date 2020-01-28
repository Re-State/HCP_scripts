#!/bin/bash

subjectlist=subjectlist.txt  # text file with subject numbers of participants you want to download images from

while read -r subject;
do

aws s3 cp s3://hcp-openaccess/HCP_1200/$subject/T1w/T1w_acpc_dc_restore.nii.gz  ./$subject"_T1w_acpc_dc_restore.nii.gz" # decide what files to download, their download location and name of downloaded files.

done < $subjectlist


# AWS Command Line Interface needs to be installed before using the script: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html
# AWS needs to be configured with human connectome project before using the script: https://wiki.humanconnectome.org/display/PublicData/How+To+Connect+to+Connectome+Data+via+AWS
# For more information: http://www.adliska.com/2016/02/04/how-to-download-human-connectome-project-data-from-amazon-web-services-aws.html
# For information about the filestructure of HCP 1200: https://www.humanconnectome.org/storage/app/media/documentation/s1200/HCP_S1200_Release_Appendix_III.pdf
