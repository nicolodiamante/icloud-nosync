<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/110962274-1605ca80-8351-11eb-8e71-c3b43d6e48fd.png" draggable="false" ondragstart="return false;" alt="iCloud NoSync Title" title="iCloud NoSync" /></a></p>

[iCloud][apple-icloud] runs constantly in the background, syncing files across
devices. This utility helps you prevent this. So, how to interrupt iCloud from
syncing files or folders? It turns out that Apple maintains a blacklist of file
names and extensions that users should avoid using in their iCloud Drive. Adding
the extension `.nosync` to a file prevents iCloud from syncing that file making
it ineligible, which could be quite useful as a method of selective syncing.
You could use the same extension in a folder, but it would not stop iCloud from
sync its content, only folders that are named `tmp` or ending with `.tmp` will
not synchronize, nor their contents.

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/110946875-b9e67a80-833f-11eb-806b-5252af874b8e.png" draggable="false" ondragstart="return false;" alt="iCloud Sync Status" title="iCloud Sync Status" width="590px" /></a></p>

**iCloud No Sync:** hides and appends the appropriate extension, depending on
whether it is a file or folder, to stop the sync, then creates a symbolic
link with the same name of the original one to avoid any problems that might
occur with applications that depend on it.

**iCloud Sync:** unhides the original file or folder, then it removes the
symbolic link and the extension to restart the synchronization (always
refer to the symlink to restart the sync).<br/><br/>

## Getting Started

### Installation

Download the repository via curl:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/icloud-nosync/main/bootstrap.sh)"
```

Alternatively, clone manually:

```shell
git clone https://github.com/nicolodiamante/icloud-nosync.git
```

Head over into the repository, then:

```shell
cd utils && source install.sh
```

> The script will make a copy of the workflow files into `~/Library/Services`.

### Show in Quick Action Menu

Open System Preferences <a href="#"><img src="https://user-images.githubusercontent.com/48920263/113451325-0df5f380-9402-11eb-80ea-cf4140340ab4.png" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /></a> Extensions <a href="#"><img src="https://user-images.githubusercontent.com/48920263/113451325-0df5f380-9402-11eb-80ea-cf4140340ab4.png" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /></a> Select Finder then check the box:

- [x] iCloud No Sync
- [x] iCloud Sync

### How It Works

1. Right-click to the file or folder you want to stop syncing to iCloud Drive.
2. Select `iCloud No Sync` from the `Quick Actions` menu to stop the sync.
3. Select `iCloud Sync` from the `Quick Actions` menu to sync it again.

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/110946959-d5518580-833f-11eb-9eca-f7f8134e2cc9.png" draggable="false" ondragstart="return false;" alt="Quick Actions Menu" title="Quick Actions Menu" width="700px" /></a></p>

## Notes
### Resources

- [Apple Support][apple-guide]

### Contribution

Please report any issues or bugs to the [issues page][issues]. Suggestions for
improvements are welcome!<br/><br/>

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/113406768-5a164900-93ac-11eb-94a7-09377a52bf53.png" draggable="false" ondragstart="return false;" /></a></p>

<p align="center"><a href="https://nicolodiamante.com" target="_blank"><img src="https://user-images.githubusercontent.com/48920263/113433823-31a84200-93e0-11eb-9ffb-9111b389ef2f.png" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="11px" /></a></p>

<p align="center"><a href="https://github.com/nicolodiamante/icloud-nosync/blob/main/LICENSE.md" target="_blank"><img src="https://user-images.githubusercontent.com/48920263/110947109-06ca5100-8340-11eb-99cf-8d245044b8a3.png" draggable="false" ondragstart="return false;" alt="The MIT License" title="The MIT License (MIT)" width="90px" /></a></p>

<!-- Link labels: -->
[apple-icloud]: https://www.apple.com/icloud/
[apple-guide]: https://support.apple.com/guide/mac-help/get-file-folder-and-disk-information-on-mac-mchlp1774/11.0/mac/11.0
[issues]: https://github.com/nicolodiamante/icloud-nosync/issues
