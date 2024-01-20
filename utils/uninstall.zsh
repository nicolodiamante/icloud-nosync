#!/bin/zsh

#
# Uninstall iCloud NoSync.
#

# Detects the Operating System.
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "This script is only compatible with macOS" >&2
  exit 1
fi

echo "\niCloud NoSync: Starting the removal process..."

# Defines the Services directory and the workflow files.
APPLE_SERVICES="${HOME}/Library/Services"
NO_SYNC=iCloud\ No\ Sync.workflow
SYNC=iCloud\ Sync.workflow

# Removes workflow files inside the Services directory.
for file in "${APPLE_SERVICES}"/{"$NO_SYNC","$SYNC"}; do
  [[ -r "$file" ]] && rm -rf "${file}"
done

# Prints a success message.
echo "iCloud NoSync: The workflow files have been removed."
