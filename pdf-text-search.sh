#!/bin/bash
# Script for a simple PDF text analysis
# Created by Denis Jakoša

SEARCH_PATH=$1
SEARCH_QUERY=$2

# -i (ignore case), -H (echo file name), -n (echo match page number), -R (recursive search)
echo "Searching for \"$SEARCH_QUERY\" in library folder $SEARCH_PATH"
pdfgrep -iHnR $SEARCH_QUERY $SEARCH_PATH

# -c (echo number of matched queries)
echo
echo "Number of matches in file for \"$SEARCH_QUERY\""
pdfgrep -iHcR $SEARCH_QUERY $SEARCH_PATH
