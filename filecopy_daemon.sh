#!/bin/bash
#
# Hunt for the .mat files in submit to the queue
#

OLD_IFS=$IFS
IFS=$'\n'

# check if the features have already been computed

COUNTER=1

while true; do

	# get files

	FILELIST=( `find -E $DATAH_SRC -type f -regex ".*\.${DATAH_FILETYPES}$" -mtime +5m` )

	for FILE in ${FILELIST[@]}; do
		echo 'Moving ' $FILE ' to ' $DATAH_DEST
		mv $FILE $DATAH_DEST
	done

	date
	sleep $(($DATAH_INTERVAL*60))
done

IFS=$OLD_IFS
