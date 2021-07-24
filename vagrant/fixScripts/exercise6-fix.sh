#!/bin/bash

#add fix to exercise6-fix here

if [ "$#" -lt 2 ]; then	
	exit 1
fi


host=$(hostname | cut -c 7)
output="${@: -1}"
arg_num=1
bytes=0

if [ "$host" -eq 1 ]; then
		remote_host="server2"
else
		remote_host="server1"
fi


for item in "$@"
do
	if [ "$arg_num" -lt "$#" ]; then
		# echo $arg_num - $item
		sudo scp -qi /home/vagrant/.ssh/id_rsa $item vagrant@$remote_host:$output
		let bytes+=$(stat --format=%s $item)
		
	fi
	let arg_num++
done

echo $bytes
 


