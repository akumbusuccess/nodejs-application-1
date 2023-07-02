#!/usr/bin/expect -f

# Set the credentials
sh set username "admin"
sh set password "admin123"

# Run the npm login command with expect
sh spawn npm login --registry=http://52.207.254.164:8081/repository/fintech-app-release/

# Expect the username prompt and provide the username
sh expect "Username:"
sh send "$username\r"

# Expect the password prompt and provide the password
sh expect "Password:"
sh send "$password\r"

# Expect the email prompt and provide the email (if required)
sh expect "Email: (this IS public)"
sh send "\r"

# Wait for the login process to complete
sh expect eof
