#! /bin/bash

usr=$(whoami)

inputs=("Desktop" "Downloads" "Documents" "Exit")

select choice in "${inputs[@]}";do
	case $choice in
		"Desktop")
			cd /home/$usr/Desktop
			echo "now you are currently in: `pwd`"
			;;
		"Downloads")
			cd /home/$usr/Downloads
			echo "now you are currently in: `pwd`"
			;;
		"Documents")
		        cd /home/$usr/Documents
			echo "now you are currently in: `pwd`"
			;;
		"Exit")
		        echo "Exiting..............."
			break
		        ;;
		*)
		     echo "Invalid operation"
	                ;;
	esac
done	

