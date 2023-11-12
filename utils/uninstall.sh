#!/bin/zsh

#
# Uninstall iCloud NoSync.
#

# Detects the Operating System.
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "This script is only compatible with macOS" >&2
  exit 1
fi

# Removes the files inside the Services directory.
APPLE_SERVICES="${HOME}/Library/Services"
NO_SYNC=iCloud\ No\ Sync.workflow
SYNC=iCloud\ Sync.workflow

for file in "${APPLE_SERVICES}"/{"$NO_SYNC","$SYNC"}; do
  [[ -r "$file" ]] && rm -rf "${file}"
done && echo 'The workflow files have been removed!'
