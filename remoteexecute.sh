#!/bin/bash
#remoteexecute.sh execute the script by remotely
username=root
for i in 'cat ip.txt'
do
scp -p /home/boobalan/testscript.sh ${username}@${i}:/${username}/
ssh ${username}@${i} <<EOF
cd /${username}
./testscript.sh
#sudo sh testscript.sh
rm /${username}/testscript.sh
EOF
done
