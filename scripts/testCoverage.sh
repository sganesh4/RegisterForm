#!/bin/bash
node main.js
node_modules/.bin/istanbul cover test.js
coverage=$(node_modules/.bin/istanbul cover test.js | grep 'Branch' | cut -d: -f 2 | cut -d. -f 1)
if [ $coverage -lt 75 ]
	then exit 1
fi
