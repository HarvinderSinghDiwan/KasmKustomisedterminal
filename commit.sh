#!/usr/bin/bash
date=2
while [ $date -le 30 ]
do
	powershell set-date -date $date-3-2021
	for i in {0..10}
	do
		echo hello >>  dockerfile
		git commit dockerfile -m "configurations added"
	done
	((date=date+1))
done
