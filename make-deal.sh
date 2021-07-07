#!/bin/bash

echo -n "Enter no. of payload CID "
read -r nCID
arrCID=()
arrMiners=()
for ((i =1 ; i<= $nCID; i++))
do
	echo "Enter payload CID $i for Deal "
	read -r CID
	arrCID=("${arrCID[@]}" "$CID")
done

echo -n "Enter no of miners "
read -r nMiner
for ((i =1 ; i<= $nMiner; i++))
do
	echo "Enter miner id $i"
	read -r mId
	arrMiners=("${arrMiners[@]}" "$mId")
done

echo "Enter miner price per gb epoch "
read -r price

echo "Enable verified deal (true/false)"
read -r verf 

echo "Enable fast retrive"
read -r fstRtrv

echo "Enter Epoch (time period of deal)"
read -r epch

#make input for start epoch
#deal result status

echo "   "
echo "********** Initiating and sending deals **********"
echo "   "

for i in ${arrCID[@]}
do
	for j in ${arrMiners[@]}
	do
		lotus-filecoin.lotus client deal --fast-retrieval=$fstRtrv --verified-deal=$verf --start-epoch=920000  $i $j $price $epch
	done 
done

echo "   "
echo "********** Deals sending processed **********"
