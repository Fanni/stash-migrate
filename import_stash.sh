#!/bin/bash

STASHLIST="$(git stash list | wc -l)"
mkdir patchfiles
for (( COUNTER=0; COUNTER<${STASHLIST}; COUNTER++ ))
do
        
        `git stash show stash@{$COUNTER} -p > patchfiles/patch$COUNTER`
        echo "Patching stash $((COUNTER+1))"
done





