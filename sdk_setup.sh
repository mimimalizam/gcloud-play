#! /usr/bin/env bash

set -e

####
# This script installs Cloud SDK which is neccessary for gsutil 
# More details can be found here (https://cloud.google.com/storage/docs/quickstart-gsutil)
####

function install_sdk(){
  echo ">> Installing the CLoud SDK"
  echo "deb http://packages.cloud.google.com/apt cloud-sdk-trusty main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

  sudo apt-get update -o Dir::Etc::sourcelist="sources.list.d/google-cloud-sdk.list" -o Dir::Etc::sourceparts="-" -o APT::Get::List-Cleanup="0"
  sudo apt-get install -y google-cloud-sdk

  echo ">> CLoud SDK Installation completed"

}

function check_python_version(){
  echo "-----------------------------------------------"
  echo "Enabled Python version: $(python -V)"
}

function show_gsutil_commands(){
  echo "-----------------------------------------------"
  gsutil
}

function main(){
  check_python_version
  install_sdk
  show_gsutil_commands
}

main
