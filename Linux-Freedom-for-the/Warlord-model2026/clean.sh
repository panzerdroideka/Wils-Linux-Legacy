#!/bin/bash
echo "--- Rengjør APT-arkiv og fjerner foreldede pakker ---"
sudo apt autoremove -y
sudo apt autoclean
