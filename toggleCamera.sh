#!/bin/bash

COMPONENT="QuickTimeUSBVDCDIgitizer.component"
ORIG="/System/Library/QuickTime"
BACKUP="$ORIG/.iSightBackup"

echo "This action requires admin rights"

if [ -d $ORIG/$COMPONENT ];
then
	sudo mv $ORIG/$COMPONENT $BACKUP
	echo "Turning iSight camera OFF"
else
	sudo mv $BACKUP/$COMPONENT $ORIG
	echo "Turning iSight camera ON"
fi

sudo -k #end the elevated status