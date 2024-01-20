#!/bin/zsh

#
# Install iCloud NoSync.
#

# Detects the Operating System
if [[ "$OSTYPE" != "darwin"* ]]; then
  echo "This script is only compatible with macOS" >&2
  exit 1
fi

# Define the Services directory
APPLE_SERVICES="${HOME}/Library/Services"

# Detects which macOS version
SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/([0-9]{2}).*/\1/' <<< "$SW_VERS")
if [[ "$OS_VERS" -ge 14 ]]; then
  echo "\niCloud NoSync: Starting the installation process..."

  # Copies files into the Services directory.
  cp -r "./scripts/iCloud No Sync.workflow" "${APPLE_SERVICES}" && \
  cp -r "./scripts/iCloud Sync.workflow" "${APPLE_SERVICES}"

  if [[ $? -eq 0 ]]; then
    echo "iCloud NoSync: The workflow files have been copied into the Services directory."
  else
    echo "iCloud NoSync: Error occurred while copying the workflow files." >&2
  fi
else
  echo "\niCloud NoSync:"
  echo "Looks like this Mac is running an earlier version of macOS. "
  echo "To be able to use and sync files, iCloud Drive requires     "
  echo "OS X Yosemite 10.10 or a later version of system software.  "
  echo "Please visit: https://support.apple.com/en-us/HT204025      "
fi
