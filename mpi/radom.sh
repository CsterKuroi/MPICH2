#!/bin/bash

if [ -e a.txt ]
then
    rm -f a.txt
fi
if [ -e b.txt ]
then
    rm -f b.txt
fi


for i in `seq 1 $1`
do
	for j in `seq 1 $1`
	do
		s=$(($RANDOM%100))
		echo -e -n "$s " >>a.txt
	done
	echo "" >>a.txt
done

for i in `seq 1 $1`
do
        for j in `seq 1 $1`
        do
                s=$(($RANDOM%100))
                echo -e -n "$s " >>b.txt
        done
        echo "" >>b.txt
done
