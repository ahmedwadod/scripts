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

# Run MySQL container with the provided values
docker run --name "$container_name" \
	-e MYSQL_USER="$db_user" \
	-e MYSQL_PASSWORD="$db_password" \
	-e MYSQL_ROOT_PASSWORD="$db_password" \
	-e MYSQL_DATABASE="$db_name" \
	-p "$port":3306 \
	-d mysql:8.0

echo "MySQL container '$container_name' is now running."
