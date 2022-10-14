#!/bin/bash

echo Installing QEMU-KVM Dependencies

sudo apt update && upgrade
sudo apt install libvirt
sudo systemctl start libvirtd
sudo systemctl enable libvirtd

echo Installing QEMU-KVM Client

sudo apt install qemu-kvm

echo Installing Virtual Machine Manager

sudo apt install virt-manager

echo Removing Leftover Files

sudo apt autoremove
sudo apt autoclean
