#!/bin/bash

echo "Would you like to download Harvard Clean Energy Data?(Type 1-Yes/2-No)"
select option in Yes No
do
	case $option in
		Yes )
			echo "Downloading file"
			curl -O http://faculty.washington.edu/dacb/HCEPDB_moldata.zip
			echo "Unzipping the file"
    		unzip HCEPDB_moldata.zip
    		echo "Finished"
    		exit
			;;
		No )
			echo "Exit program"
			exit
			;;
	esac
done