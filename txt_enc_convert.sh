#!/bin/bash

if  [ "$1" == "" ]
then  
  echo "usage: $0 <Input file>"
  exit 0
fi

if ! [ -f  $1 ]
then
  echo "$1 does not exits"
  exit 0
fi

FROM_ENC=windows-1250
TO_ENC=utf-8

NEW_FILE_NAME=$(sed -E 's#(.txt)#.conv\1#g' <<< $1)

iconv -f $FROM_ENC -t $TO_ENC $1 > $NEW_FILE_NAME