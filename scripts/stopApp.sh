#!/bin/bash


# Set your npm username and password
NPM_USERNAME="admin"
NPM_PASSWORD="admin123"

# Run the npm login command with provided credentials
echo -e "${NPM_USERNAME}\n${NPM_PASSWORD}\n\n" | npm login --registry=http://52.207.254.164:8081/repository/fintech-app-release/
