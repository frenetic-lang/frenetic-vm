# Frenetic User VM

To get the latest version of Frenetic User VM, see `README.md` in the folder above.

To build a new version of Frenetic User VM, including the latest Master branch copy of Frenetic itself, you
will need to install:

- Git from https://git-scm.com/downloads
- VirtualBox from https://www.virtualbox.org/wiki/Downloads
- Packer from https://www.packer.io/intro/getting-started/setup.html

These dependencies are all supposed to work on Windows, Linux and Mac OSX.  We have only tried them on
Mac OSX.  

All of the scripts that Packer needs to build the VM are contained in this repository, and to run them
(with appropriate substitutions on Windows):

  $ git clone http://github.com/frenetic-lang/frenetic-vm
  $ cd frenetic-vm/packer
  $ ./local_build.sh

The process takes about 40 minutes on a Macbook Pro i7.  At the end you will have a single zip file named
`frenetic-uservm-x86_64-YYYYMMDD.zip` where `YYYYMMDD` is today's date.  

FTP this file to downloads.frenetic-lang.org (get credentials from Nate).  Drop it in the folder
`/var/www/frenetic-downloads/uservm`.  Then point the symbolic 
link `/var/www/frenetic-downloads/uservm/frenetic-uservm-current` to the file you just added.  That's it!