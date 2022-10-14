#!/bin/bash

echo Uninstalling QEMU-KVM Dependencies

sudo apt update && upgrade
sudo systemctl stop libvirtd
sudo systemctl disable libvirtd
sudo apt purge libvirt

echo Uninstalling QEMU-KVM Client

sudo apt purge qemu-kvm

echo Uninstalling Virtual Machine Manager

sudo apt purge virt-manager

echo Removing Leftover Files

sudo apt autoremove
sudo apt autoclean
