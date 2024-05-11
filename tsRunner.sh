#!/bin/bash

file=$1

# noOfFiles is either 0 or 1
# it is the name of the file that need to run using node 
noOfFiles=$#

# first builing typescript file
tsc -b

# if the number of file is 0 ,
# then run the latest saved(using ctrl+s) file using node
if [[ $noOfFiles == 0 ]];
then 
  filesInSrc=$(ls -rt ./src)
  for file in $filesInSrc
  do
    x=$file
  done
  # now replace the ts with js
  jsFile=${x/ts/js}
  
  #now run the latest saved file using node
  node ./dist/$jsFile

else
  # if the name of file is provided then first check if name
  # exists , then run it
  filesInDist=$(ls -rt ./dist)
  
  check=0

  file=${file/ts/js}

  for file2 in $filesInDist
  do
    if [ $file2 = $file ];
    then 
      check=1
    fi
  done


  if [[ $check == 0 ]];
  then 
    echo "file not found in dist"
  else
    node ./dist/${file/ts/js}
  fi

  
fi

