#!/bin/bash

# Function to install Python if not present
function install_python() {
  if ! command -v python &> /dev/null; then
    echo "Installing Python..."
    apt update
    apt install python -y
    echo "Python installed"
  fi
}

# Function to install Python2 if not present
function install_python2() {
  if ! command -v python2 &> /dev/null; then
    echo "Installing Python 2..."
    apt update
    apt install python2 -y
    echo "Python 2 installed"
  fi
}

# Function to install Python3 if not present
function install_python3() {
  if ! command -v python3 &> /dev/null; then
    echo "Installing Python 3..."
    apt update
    apt install python3 -y
    echo "Python 3 installed"
  fi
}

# Function to install pip if not present
function install_pip() {
  if ! command -v pip &> /dev/null; then
    echo "Installing pip..."
    apt install python-pip -y
    echo "pip installed"
  fi
}

# Function to install pip2 if not present
function install_pip2() {
  if ! command -v pip2 &> /dev/null; then
    echo "Installing pip2..."
    apt install python-pip -y
    echo "pip2 installed"
  fi
}

# Function to install pip3 if not present
function install_pip3() {
  if ! command -v pip3 &> /dev/null; then
    echo "Installing pip3..."
    apt install python3-pip -y
    echo "pip3 installed"
  fi
}

# Install Python
install_python &

# Install Python2
install_python2 &

# Install Python3
install_python3 &

# Install pip
install_pip &

# Install pip2
install_pip2 &

# Install pip3
install_pip3 &

# Wait for background installations to complete
wait

# Clear the terminal
clear

# Run the logo.py file
python src/logo.py

# List of required packages
packages=("os" "time" "random" "sys" "rich" "socket" "platform" "threading" "user_agent" "requests")

# Initialize colors
green='\033[0;32m'
red='\033[0;31m'
magenta='\033[0;35m'
reset='\033[0m'

# Loop through the packages
for package in "${packages[@]}"; do
  # Check if the package is installed
  if python -c "import $package" &> /dev/null; then
    echo -e "[ ${green}+${reset} ] $package is already installed"
  else
    echo -e "[ ${red}-${reset} ] $package is not installed"
    echo -e "[ ${magenta}+${reset} ] Installing $package..."
    pip install $package
    echo -e "[ ${green}=${reset} ] $package installed"
  fi
done

# Clear the terminal
clear

# Run the logo.py file again
python src/logo.py

# Sleep for a while (you can adjust the sleep time as needed)
sleep 5

# Start your main.py file
python main.py
