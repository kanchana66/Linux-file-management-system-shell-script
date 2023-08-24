#! /bin/bash

inputs=("Desktop" "Downloads" "Documents" "Exit")

select choice in "${inputs[@]}";do
	case $choice in
		"Desktop")
			cd $HOME/Desktop
			echo "now you are currently in: `pwd`"
			;;
		"Downloads")
			cd $HOME/Downloads
			echo "now you are currently in: `pwd`"
			;;
		"Documents")
		        cd $HOME/Documents
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

