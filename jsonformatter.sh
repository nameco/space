#!/bin/sh
PJSON=./pjson.py
for f in `find . -name "*.json"`;
do
  echo $f
  cat $f | $PJSON  > $f.tmp && mv $f.tmp $f; echo success: $f
done
