utility-vagrants
================

A Vagrantfile collecting useful VMs

Usage
=====

Install a type-2 hypervisor (all VMs are currently configured
for VirtualBox) (https://www.virtualbox.org/wiki/Downloads )

Install Vagrant for your operating system (https://www.vagrantup.com/downloads.html )

To get a list of defined VMs: `$ vagrant status`

To start a particular VM: `$ vagrant up centos7`

To connect to a particular VM:
`$ vagrant ssh centos7`

>NOTE: for Windows, recommend RDP: `$ vagrant rdp winserv2012std`


VM descriptions
===============

centos65 - CentOS 6.5 OS + Puppet + Chef

centos6 - Base CentOS 6.7 OS

centos7 - Base CentOS 7 OS (USB 2.0 disabled)

debian8 - Base Debian 8 (Jessie)

debian9 - Base Debian 9 (Stretch)

ubuntu1404 - Base Ubuntu 14.04 OS

ubuntu1504 - Base Ubuntu 15.04 OS

ubuntu1604 - Base Ubuntu 16.04 OS

ubuntu1604dev - Ubuntu 16.04 OS with Gnome desktop + Atom/VSCode IDEs + Git

winserv2012std - Windows Server 2k12 R2 Standard Edition

winserv2016eval - Windows Server 2k16 Standard Evaluation

>NOTE: winserv2016eval given 2GB memory b/c Docker host. Two pre-installed images: `microsoft/windowsservercore` & `microsoft/nanoserver`

TODO
====

* Add VMs with various SCM systems (Chef, Puppet, etc) pre-installed
* Test suite of some sort
