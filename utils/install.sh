#!/bin/sh

#
# Install iCloud Sync Status.
#

# Detects the Operating System.
[[ "$OSTYPE" = darwin* ]] || exit 1

# Define the Services directory.
APPLE_SERVICES="${HOME}/Library/Services"

# Detects which macOS version.
SW_VERS=$(sw_vers -buildVersion)
OS_VERS=$(sed -E -e 's/([0-9]{2}).*/\1/' <<< "$SW_VERS")

if [[ "$OS_VERS" -ge 14 ]]; then
  # Copies files into the Services directory.
  cp -r ../scripts/iCloud\ No\ Sync.workflow "${APPLE_SERVICES}"
  cp -r ../scripts/iCloud\ Sync.workflow "${APPLE_SERVICES}"
  echo 'The workflow files have been copied into the Services directory.'
else
  echo 'Looks like this Mac is running an earlier version of macOS. '
  echo 'To be able to use and sync files, iCloud Drive requires     '
  echo 'OS X Yosemite 10.10 or a later version of system software.  '
  echo 'Please visit https://support.apple.com/en-us/HT204025       '
fi
