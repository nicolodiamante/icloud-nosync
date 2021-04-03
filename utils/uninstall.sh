#!/bin/sh

#
# Uninstall iCloud Sync Status.
#

# Detects the Operating System.
[[ "$OSTYPE" =~ ^darwin* ]] || exit 1

# Removes the files inside the Services directory.
APPLE_SERVICES="${HOME}/Library/Services"
NO_SYNC=iCloud\ No\ Sync.workflow
SYNC=iCloud\ Sync.workflow

for file in "${APPLE_SERVICES}"/{"$NO_SYNC","$SYNC"}; do
  [[ -r "$file" ]] && rm -rf "${file}"
done && echo 'The workflow files have been removed!'
