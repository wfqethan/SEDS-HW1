#!/bin/bash
# SEDS HW#1 Fangqi Wang 01/16/2017

echo "Would you like to download Harvard Clean Energy Project Database?(Type 1-Yes/2-No)"
select option in Yes No  # Create a menu for user to select options
do
	case $option in
		Yes )  # Proceed with following command if user would like to download the database
			echo "Downloading file"
			# Download the file
			curl -O http://faculty.washington.edu/dacb/HCEPDB_moldata.zip
			echo "Unzipping the file"
    		# Unzip the file
    		unzip HCEPDB_moldata.zip
    		echo "Completed"
    		exit
			;;
		No ) # Exit the program if user does not want to download the file
			echo "Exit program"
			exit 
			;;
	esac
done