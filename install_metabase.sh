#!/bin/bash

# Update package repository
sudo apt update

# Install dependencies (Java and SQLite)
sudo apt install -y default-jre sqlite3

# Download Metabase JAR file
METABASE_VERSION="0.41.1"  # Change this to the desired Metabase version
wget "https://downloads.metabase.com/v${METABASE_VERSION}/metabase.jar"

# Create a directory for Metabase data
mkdir ~/metabase-data

# Run Metabase as a background process
nohup java -jar metabase.jar > metabase.log 2>&1 &

echo "Metabase installation complete. You can access Metabase at http://localhost:3000"
