registry_url="http://52.207.254.164:8081/repository/fintech-app-release/"

# Provide your Nexus registry username and password
username=admin
password=admin123

# Run npm login command using expect
expect <<EOF
spawn npm login --registry="$registry_url"
expect "Username: "
send "$username\r"
expect "Password: "
send "$password\r"
expect eof
EOF

sleep 2
