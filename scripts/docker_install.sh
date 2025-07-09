#!/bin/sh

WHEEL_DIR="../dist"
WHEEL_EXT="whl"

if [ ! -d "$WHEEL_DIR" ]; then
    echo "Error: Wheel directory not found."
    exit 1
fi

echo "Searching $WHEEL_DIR for extension .$WHEEL_EXT"
for FILE in "$WHEEL_DIR"/*."$WHEEL_EXT"; do
    echo "Found Wheel: $FILE"
    if [ -f "$FILE" ]; then
        echo "Installing Wheel: $FILE"
        pip install --no-cache-dir $FILE
    fi
done