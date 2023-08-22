#!/bin/bash

#Wlecome 
echo "Welcome Simple File Management System"
echo "-------------------------------------"
echo "       "
path=`pwd`
echo "You are currently in: $path Directory"
list=`ls`
echo "This files and Directories are in your Direcrory: "
echo "             "
echo "$list"
echo "- - - - - - - - -- - - - - - - - - - -"

#selection loop
system=("Delete_Directory" "Make_Directory" "Rename_Directory" "Exit")

select choice in ${system[@]}
     do
        case $choice in


	    "Delete_Directory")
		echo "You Select Delete Directory Option"
		read -t 8 -p "Input name or path of derectory you want to delete:" name

	        if [ -z "$name" ];then
		     echo -e "\nNo Input Resived"
		else
		     rm -r $name
		fi
	     ;;


	     "Make_Directory")
		echo "You Selete Make Directory"
		read -t 8 -p "input name for your new derectory: " name
		if [ -z $name ];then
		     echo -e "\nNo Input Resived"
		else
		     mkdir "$name"
		fi	
	      ;;


	      "Rename_Directory")
		echo "you select Rename Directory Option"
		read -t 8 -p  "Old Name Of Directory: " old
		read -t 8 -p  "New Name Of Directory: " new
		if [ -z $old ] || [ -z $new ];then
		    echo -e "\nNo Old Or New Name Resived"
		else
		    mv $old $new 
		fi
	       ;;


	       "Exit")
		echo "Thank you for using our simple system"
		break
	       ;;


	       *)
		echo "You Select Invalid Option"
	       ;;
	esac
done
