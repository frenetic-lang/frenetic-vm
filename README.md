# Frenetic Virtual Machine

The Frenetic Virtual Machine, or Frenetic VM, is the preferred way to get started with Frenetic.  
(What is Frenetic?  See http://frenetic-lang.org)

There are two versions of Frenetic VM:

* The __Frenetic User VM__ is for developing or running SDN networks on top of Frenetic.  This VM comes in either
VirtualBox or VMWare format,
runs the lightweight GUI Lubuntu 14.04, and comes with a complete suite of testing and debugging tools.  It contains
a stable version of Frenetic.

* The __Frenetic Developer VM__ is for developers working on Frenetic itself.  This VM uses Vagrant and VirtualBox, contains
no GUI, and shares the Frenetic Source directory so you can use host-based editors.  It contains the latest version of
Frenetic and all developer branches.     

## Frenetic User VM

You can download the latest version of Frenetic User VM from 
http://download.frenetic-lang.org/uservm/frenetic-uservm-current.  

Then follow the directions in one of the following:

- The Frenetic Language README at http://github.com/frenetic-lang/frenetic
- The Frenetic Programmers Manual at 
  https://github.com/frenetic-lang/manual/blob/master/programmers_guide/frenetic_programmers_guide.pdf
- The Frenetic OCaml Tutorial at http://frenetic-lang.github.io/tutorials/

To build a new version of the Frenetic User VM, see `README.md` in the `packer` directory.  

## Frenetic Developer VM

This requires Vagrant and VirtualBox on your host.  

    $ git clone http://github.com/frenetic-lang/frenetic-vm
    $ cd frenetic-vm
    $ vagrant up

The will build the Frenetic virtual machine, and Frenetic from the current sources.  It takes about 30 minutes
to run on a MacBook Pro i7.  When it's done, type:

    $ vagrant ssh

to connect to the virtual machine.
