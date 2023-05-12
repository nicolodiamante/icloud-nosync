<p align="center"><a href="#"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/eaf1d930-22b8-4c3f-bd9c-cc2209a1412a" draggable="false" ondragstart="return false;" alt="iCloud NoSync Title" title="iCloud NoSync" /></a></p>

[iCloud][apple-icloud] is a powerful utility that allows users to sync files across multiple devices. However, sometimes users may want to prevent certain files or folders from syncing. Apple has a blacklist of file names and extensions that users should avoid using in their iCloud Drive. Adding the extension .nosync to a file is a simple way to prevent iCloud from syncing that file. This technique is useful for selective syncing. However, adding the same extension to a folder will not prevent iCloud from syncing its contents. The only way to prevent an entire folder from syncing is to name it tmp or end it with .tmp.
<br/><br/><br/><br/>

<p align="center"><a href="#"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/02e60447-aa41-4c2f-87fb-eda75b10d4cd" draggable="false" ondragstart="return false;" alt="iCloud Sync Status" title="iCloud Sync Status" width="650px" /></a></p>

<br/><br/><br/>

**iCloud No Sync:** hides and appends the appropriate extension to the file or folder, effectively stopping the sync process. It then creates a symbolic link with the same name as the original file or folder to avoid any issues with applications that depend on it.

<br/>

**iCloud Sync:** it first unhides the original file or folder. Then, it removes the symbolic link and the extension to restart the synchronization. This means that iCloud Sync always refers to the symlink to restart the sync, which ensures that the latest version of the file or folder is synchronized across all your devices. By removing the symbolic link and the extension, iCloud Sync ensures that the sync is done from scratch, which reduces the chances of any errors or conflicts during the synchronization process.<br/><br/>

## Getting Started

### Installation

Download the repository via curl:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/icloud-nosync/HEAD/bootstrap.sh)"
```

Alternatively, you can clone the repository manually:

```shell
git clone https://github.com/nicolodiamante/icloud-nosync.git
```

Once you have downloaded the repository, you can navigate into its directory in the terminal and paste the following code:

```shell
cd utils && source install.sh
```

The script will make a copy of the workflow files into `~/Library/Services`.

<br/>

### Show in Quick Action Menu

Open System Preferences <a href="#"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/1905590e-328d-4f7b-9501-2371681a648a" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /></a> Extensions <a href="#"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/1905590e-328d-4f7b-9501-2371681a648a" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /></a> Select Finder then check the box:

- [x] iCloud No Sync
- [x] iCloud Sync

### How It Works

1. Right-click to the file or folder you want to stop syncing to iCloud Drive.
2. Select `iCloud No Sync` from the `Quick Actions` menu to stop the sync.
3. Select `iCloud Sync` from the `Quick Actions` menu to sync it again.
<br/><br/><br/><br/>
<p align="center"><a href="#"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/bb66901a-2622-4a05-bdb7-34801e4ecf1e" draggable="false" ondragstart="return false;" alt="Quick Actions Menu" title="Quick Actions Menu" width="560px" /></a></p><br/><br/>

## Notes
### Resources

- [Apple Support][apple-guide]

### Contribution

Any suggestions or feedback you may have for improvement are welcome. If you encounter any issues or bugs, please report them to the [issues page][issues].<br/><br/>

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/113406768-5a164900-93ac-11eb-94a7-09377a52bf53.png" draggable="false" ondragstart="return false;" /></a></p>

<p align="center"><a href="https://nicolodiamante.com" target="_blank"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/12de7670-404a-43f8-8997-70361174c30e" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="11px" /></a></p>

<p align="center"><a href="https://github.com/nicolodiamante/icloud-nosync/blob/main/LICENSE.md" target="_blank"><img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/957a61a7-8aba-4907-b099-97fec8bfb99a" draggable="false" ondragstart="return false;" alt="The MIT License" title="The MIT License (MIT)" width="90px" /></a></p>

<!-- Link labels: -->
[apple-icloud]: https://www.apple.com/icloud/
[apple-guide]: https://support.apple.com/guide/mac-help/get-file-folder-and-disk-information-on-mac-mchlp1774/11.0/mac/11.0
[issues]: https://github.com/nicolodiamante/icloud-nosync/issues
