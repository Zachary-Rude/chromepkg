<p align="center"><img src="https://www.google.com/chrome/static/images/chrome-logo.svg" alt="Chrome logo" /></p>

<h1 align="center">ChromePKG</h1>

<p align="center">The missing package manager for ChromeBooks</p>

Overview
--------

Chromebooks with Chrome OS run a Linux kernel. The only missing pieces to use them as full-featured Linux distro are GCC and Make with their dependencies. Well, these pieces aren't missing anymore. Say hello to ChromePKG!

Prerequisites
-------------

You will need a Chromebook with Developer Mode enabled.  To do so, select your device on
[the Chromium OS Wiki](https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices) and follow the instructions listed there.

Please be aware of the fact that developer mode is insecure if not properly configured. Setting a password as instructed in the VT-2 login screen is essential. It is also recommended to enable signed boot:

```bash
sudo chromeos-setdevpasswd
sudo crossystem dev_boot_signed_only=1
```

Supported Systems
-----------------

| Architecture | Supported? |
|:---:|:---:|
| x86_64 | Yes |
| i686 | Yes<sup>*</sup> |
| armv7l | Yes |
| aarch64 | Yes |

<sup>*</sup> <i>We can only provide limited support for i686 since Google has discontinued support.  Although we can no longer support gui apps, we will try to continue to support cli programs.</i>

Installation
------------

The beta, dev, and Canary channels are ***not*** supported and should ***not*** be used with ChromePKG.
Failure to take notice of this will cause major issues with your ChromePKG installation.

Open Crosh with Ctrl+Alt+T and type `shell`.

If this command returns `ERROR: unknown command: shell`, please have a second look at the prerequisites and make sure your Chromebook is in developer mode.

Then download and run the installation script below:

    curl -Ls https://git.io/JzMFm | bash

On a rooted Google OnHub, the command needs to be run with the "chronos" user. In order to make su work, a password is needed for the chronos user.

    # passwd chronos
    Changing password for chronos.
    Enter new UNIX password:
    Retype new UNIX password:
    # su - chronos
    Password:
    $ curl -Ls https://git.io/JzMFm | bash

Help
----

Please check out the [wiki](https://github.com/Zachary-Rude/chromepkg/wiki) to find out more information about ChromePKG including helpful tips, resource links and frequently asked questions. Also please check existing [issues](https://github.com/Zachary-Rude/chromepkg/issues) before submitting a new one.

Usage
-----

    crpkg <command> [-k|--keep] <package1> [<package2> ...]

Where available commands are:

| Command | Description |
|:---|:---|
| build | build package(s) from source and store the archive and checksum in the current working directory |
| const | display constant(s) |
| download | download package(s) to CREW_BREW_DIR (/usr/local/tmp/crpkg by default), but don't install |
| files | display installed files of package(s) |
| help | get information about command usage |
| install | install package(s) along with dependencies after prompting for confirmation |
| list | available, installed, compatible or incompatible packages |
| postinstall | display postinstall messages of package(s) |
| reinstall | remove and install package(s) |
| remove | remove package(s) |
| search | look for package(s) |
| update | update crpkg itself |
| upgrade | update all or specific package(s) |
| whatprovides | regex search for package(s) that contains file(s) |

Available packages are listed in the [packages directory](https://github.com/Zachary-Rude/chromepkg/tree/master/packages).

ChromePKG will wipe its `BREW_DIR` (`/usr/local/tmp/crpkg` by default) after installation unless you pass `-k` or `--keep` when running `crpkg install`.

    crpkg install --keep <package1> [<package2> ...]

Recently Upgraded Packages
--------------------------

| Name | Description | Date Upgraded | Version |
|:---|:---|:---|:---|
| atom | The hackable text editor | 2021-08-21 | 1.58.0-1 |
| vulkan_icd_loader | Vulkan Installable Client Driver ICD Loader | 2021-08-20 | 1.2.189 |
| vulkan_headers | Vulkan header files | 2021-08-20 | 1.2.189 |
| mesa | Open-source implementation of the OpenGL specification | 2021-08-20 | 21.2.1 |
| upx | Extendable, high-performance executable packer for several executable formats | 2021-08-19 | 4.0.0-8a82 |
| qtbase | Qt Base (Core, Gui, Widgets, Network, ...) | 2021-08-19 | 5.15.3 |
| patchelf | PatchELF is a small utility to modify the dynamic linker and RPATH of ELF executables. | 2021-08-18 | 0.13 |
| gtest | Google Test - C++ testing utility | 2021-08-17 | 1.11.0 |
| libidn2 | GNU Libidn is a fully documented implementation of the Stringprep, Punycode and IDNA 2003 specifications. | 2021-08-17 | 2.3.2 |
| libnghttp2 | library implementing HTTP/2 protocol | 2021-08-17 | 1.44.0 |

Latest Packages
---------------

| Name | Description | Date Added |
|:---|:---|:---|
| crew | Chromebrew is a package manager for Chromebooks. | 2021-11-24 |
| apktool | A tool for reverse engineering Android apk files | 2021-08-20 |
| teams | Microsoft Teams - Meet, chat, call, and collaborate in just one place. | 2021-08-15 |
| github_desktop | GitHub Desktop is an open source Electron-based GitHub app | 2021-08-15 |
| py3_secretstorage | Python bindings to Freedesktop.org Secret Service API | 2021-07-29 |
| py3_openssl | PyOpenSSL is a Python wrapper module around the OpenSSL library. | 2021-07-29 |
| py3_oci | Oracle Cloud Infrastructure Python SDK | 2021-07-29 |
| py3_keyring | Keyring stores and accesses your passwords safely. | 2021-07-29 |
| py3_impacket | Impacket provides network protocols constructors and dissectors. | 2021-07-29 |
| py3_ebooklib | Ebooklib is a Python E-book library for handling books in EPUB2/EPUB3 format. | 2021-07-29 |
| py3_cryptography | Cryptography provides cryptographic recipes and primitives to Python developers. | 2021-07-29 |

License
-------

Copyright &copy; 2021 Zachary Rude.
This project, including all of its source files, is released under the terms of [GNU General Public License (version 3 or later)](http://www.gnu.org/licenses/gpl.txt).
