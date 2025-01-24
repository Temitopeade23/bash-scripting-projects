#!/bin/bash
#Author: Temitope Adeniyi Gbadamosi
#Date of Creation: 24th,January 2025
#Date Modified

#Script Description: For installing git on operating sytems

#Script usage: Run this script to install git on MacOs or Linux

echo "Git Installtion."
echo "Installation Started."


#Check the operating system
if [ "$(uname)" == "Linux"  ]; then
	echo "This is a Linux Operting System, Confirming Package Manager."

#Confirm Package Manager
      if command -v apt >/dev/null 2>&1 ; then
	  echo "Using apt package manager."
          sudo apt update && sudo apt install git -y
	  echo "Installation Successful."

      elif command -v yum >/dev/null 2>&1 ; then
	  echo "Using yum package manager."
          sudo yum install git -y
	  echo "Installation Successful."

      elif command -v dnf >/dev/null 2>&1 ; then
          echo "Using dnf package manager."
          sudo dnf install git -y
          echo "Installation Successful."

      else
         echo "Unsupported Linux distribution, package manager not detected"
       exit 1
       fi

elif [ "$(uname)" == "Darwin"  ]; then
        echo "This is a Mac Operating System, Checking HomeBrew....."
        if command -v brew >/dev/null 2>&1 ; then
	   brew install git	
           echo "Installation Successful."
        else
		echo "Homebrew is not installed, please install Homebrew."
	exit 1
	fi
else 
	echo "Windows Operating System Not Supported."
fi

