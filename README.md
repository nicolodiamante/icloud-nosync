<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/8c37ca97-ebd7-41dd-9ce2-f362c8fedb5a" draggable="false" ondragstart="return false;" alt="iCloud NoSync" title="iCloud NoSync" />
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/7252ce73-8f3b-4d70-8168-066b610148ae" draggable="false" ondragstart="return false; "alt="iCloud NoSync" title="iCloud NoSync" />
  </picture>
</p>

[iCloud][apple-icloud] is a powerful utility that allows users to sync files across multiple devices. However, sometimes users may want to prevent certain files or folders from syncing. Apple has a blacklist of file names and extensions that users should avoid using in their iCloud Drive. Adding the extension .nosync to a file is a simple way to prevent iCloud from syncing that file. This technique is useful for selective syncing. However, adding the same extension to a folder will not prevent iCloud from syncing its contents. The only way to prevent an entire folder from syncing is to name it tmp or end it with .tmp.

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/a1e57d3d-ec4d-485c-bfaa-54e4dc74e722" draggable="false" ondragstart="return false;" alt="iCloud NoSync Finder" title="iCloud NoSync Finder" />
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/79be16a5-25f2-4ec4-a503-2ba359d9adf5" draggable="false" ondragstart="return false; "alt="iCloud NoSync Finder" title="iCloud NoSync Finder" width="600px" />
  </picture>
</p>

<br><br>

**iCloud No Sync:** hides and appends the appropriate extension to the file or folder, effectively stopping the sync process. It then creates a symbolic link with the same name as the original file or folder to avoid any issues with applications that depend on it.

<br>

**iCloud Sync:** it first unhides the original file or folder. Then, it removes the symbolic link and the extension to restart the synchronisation. This means that iCloud Sync always refers to the symlink to restart the sync, which ensures that the latest version of the file or folder is synchronised across all your devices. By removing the symbolic link and the extension, iCloud Sync ensures that the sync is done from scratch, which reduces the chances of any errors or conflicts during the synchronisation process.<br><br>

## Getting Started

### Installation

The installation process for this utility is designed for ease and convenience. You have two options:

**Automatic Installation via `curl`**: Simply execute the following command in your terminal to quickly download and seamlessly install the utility:

```shell
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/icloud-nosync/HEAD/bootstrap.zsh)"
```

**Manual Installation**: If you favor manual installation, first clone the repository to your local machine using `git`:

```shell
git clone https://github.com/nicolodiamante/icloud-nosync.git
```

After cloning, navigate to the repository's directory in your terminal and execute the install script:

```shell
source utils/install.zsh
```

This script will copy the workflow files to `~/Library/Services`.

<br>

### Show in Quick Action Menu

Open System Preferences <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/1905590e-328d-4f7b-9501-2371681a648a" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /> Extensions <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/1905590e-328d-4f7b-9501-2371681a648a" draggable="false" ondragstart="return false;" alt="Arrow" title="Arrow" width="5.4px" /> Select Finder then check the box:

- [x] iCloud No Sync
- [x] iCloud Sync

### How It Works

1. Right-click on the file or folder you want to stop syncing to iCloud Drive.
2. Select `iCloud No Sync` from the `Quick Actions` menu to stop the sync.
3. Select `iCloud Sync` from the `Quick Actions` menu to sync it again.

<br><br>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/463b58e5-b7bc-4183-80d6-818b6464e23e" draggable="false" ondragstart="return false;" alt="Quick Actions Menu" title="Quick Actions Menu" />
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/ebe5533b-43c7-406a-a8b5-c9f0a2411711" draggable="false" ondragstart="return false; "alt="Quick Actions Menu" title="Quick Actions Menu" width="560px" />
  </picture>
</p>

<br>

## Notes

### Resources

- [Apple Support][apple-guide]

### Contribution

Any suggestions or feedback you may have for improvement are welcome. If you encounter any issues or bugs, please report them to the [issues page][issues].
<br><br>

<p align="center">
  <picture>
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/82fd2d06-9e57-47fc-8f07-8d8b5a728a97" draggable="false" ondragstart="return false;" /></>
  </picture>
</p>

<p align="center">
  <a href="https://nicolodiamante.com" target="_blank">
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/aa3768d1-9434-4a15-9d01-1b0c984ccb0f" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="17px" />
  </a>
</p>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/b407493d-679c-4b7a-b024-e07701700a14" draggable="false" ondragstart="return false;" alt="MIT License" title="MIT License" />
    <img src="https://github.com/nicolodiamante/icloud-nosync/assets/48920263/1c9f157c-7f5d-444f-8c73-dff70c191260" draggable="false" ondragstart="return false; "alt="MIT License" title="MIT License" width="95px" />
  </picture>
</p>

<!-- Link labels: -->

[apple-icloud]: https://www.apple.com/icloud/
[apple-guide]: https://support.apple.com/guide/mac-help/get-file-folder-and-disk-information-on-mac-mchlp1774/11.0/mac/11.0
[issues]: https://github.com/nicolodiamante/icloud-nosync/issues
