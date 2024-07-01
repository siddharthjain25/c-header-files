#!/bin/bash

# Function definitions
choice1() {
  echo "You selected Choice 1"
  # Add your commands for Choice 1 here
}

choice2() {
  echo "You selected Choice 2"
  # Add your commands for Choice 2 here
}

choice3() {
  echo "You selected Choice 3"
  # Add your commands for Choice 3 here
}

show_menu() {
  echo "Please select an option:"
  echo "1. Choice 1"
  echo "2. Choice 2"
  echo "3. Choice 3"
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
