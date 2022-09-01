#!/bin/bash

function set_config(){
    if [[ "$1" == "libvirt" ]]; then
       cp -rf configs/Vagrantfile_libvirt ./Vagrantfile
    else
       cp -rf configs/Vagrantfile_vbox ./Vagrantfile
    fi
}

while getopts "p:" option; do
  case "$OPTARG" in
    "vbox" )
      set_config "vbox"
    ;;

    "libvirt" )
      set_config "libvirt"
    ;;
  esac
done
