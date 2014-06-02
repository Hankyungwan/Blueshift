#!/bin/bash
# stupid script to copy the changes from the repo over to the staging manifest repository
cp `find -f ../Blueshift/.repo/manifests/* -type f` .
