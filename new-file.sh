#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage : ./new-file.sh <filename>"
    exit 1
fi

TEMPLATE="template.qmd"
NEW_FILE="$1.qmd"

if [ -f "$NEW_FILE" ]; then
    echo "$NEW_FILE already exists"
else
    cp "$TEMPLATE" "$NEW_FILE"
    echo "Created $NEW_FILE from $TEMPLATE."
fi