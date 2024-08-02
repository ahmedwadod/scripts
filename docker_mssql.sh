#!/bin/bash

# Prompt for container name
read -p "Enter container name: " container_name

# Prompt for database user
read -p "Enter database user: " db_user

# Prompt for database password
read -sp "Enter database password: " db_password
echo

# Prompt for database name
read -p "Enter database name: " db_name

# Prompt for port
read -p "Enter port: " port

# Run MSSQL container with the provided values
docker run --name "$container_name" \
	-e ACCEPT_EULA=Y \
	-e SA_PASSWORD="$db_password" \
	-e MSSQL_PID=Express \
	-p "$port":1433 \
	-d mcr.microsoft.com/mssql/server:2019-latest

echo "MSSQL container '$container_name' is now running."
