#!/bin/bash

COMPONENT="QuickTimeUSBVDCDIgitizer.component"
ORIG="/System/Library/QuickTime"
BACKUP="$ORIG/.iSightBackup"

echo "This action requires admin rights"

if [ ! -d $BACKUP ];
then
    sudo mkdir $BACKUP
fi

if [ -d $ORIG/$COMPONENT ];
then
	sudo mv $ORIG/$COMPONENT $BACKUP/$COMPONENT
	echo "Turning iSight camera OFF"
else
	sudo mv $BACKUP/$COMPONENT $ORIG/$COMPONENT
	echo "Turning iSight camera ON"
fi

sudo -k #end the elevated status