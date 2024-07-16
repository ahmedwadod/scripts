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

# Run the Docker container with the provided values
docker run --name "$container_name" \
    -e POSTGRES_USER="$db_user" \
    -e POSTGRES_PASSWORD="$db_password" \
    -e POSTGRES_DB="$db_name" \
    -p "$port":5432 \
    -d postgres:15

echo "PostgreSQL container '$container_name' is now running."

