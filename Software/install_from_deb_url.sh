#!/bin/sh
dir_name=as45g4g2dh3j2j
mkdir $dir_name

safe_exit()
{
	if (pwd | grep /$dir_name > /dev/null)
	then
		popd > /dev/null
	fi
	if (ls | grep $dir_name > /dev/null)
	then
		rm -rf $dir_name
		exit
	fi
}

pushd $dir_name > /dev/null
if [ -z $1 ]
then
	echo "Usage: $0 URL"
	safe_exit
fi
echo "Starting download"
if !(curl -L $1 -o pkg.deb 2> /dev/null)
then
	echo "Download failed"
	safe_exit
fi
echo "Creating rpm from deb"
OUTPUT_NAME=$(sudo alien -r pkg.deb 2> /tmp/error | sed 's/ generated//')
if grep "not found" /tmp/error -q
then
	echo "deb file not found"
	safe_exit
fi
echo "Installing RPM"
if !(sudo rpm --replacefiles -i $OUTPUT_NAME 2> /tmp/error)
then
	if grep "already installed" /tmp/error -q
	then
		echo "RPM already installed"
	else
		echo "RPM install failed"
	fi
	safe_exit
fi
echo "Finished installing"
safe_exit
