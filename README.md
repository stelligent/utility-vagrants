utility-vagrants
================

A Vagrantfile collecting useful VMs

Usage
=====

Install a type-2 hypervisor (all VMs are currently configured
for VirtualBox) (https://www.virtualbox.org/wiki/Downloads )

Install Vagrant for your operating system (https://www.vagrantup.com/downloads.html )

To get a list of defined VMs:

$ vagrant status

To start a particular VM:

$ vagrant up centos7

To connect to a particular VM

$ vagrant ssh centos7

VM descriptions
===============

centos6 - Base CentOS 6.7 OS
centos7 - Base CentOS 7 OS (USB 2.0 disabled)
ubuntu1404 - Base Ubuntu 14.04 OS

TODO
====

* Add VMs with various SCM systems (Chef, Puppet, etc) pre-installed
