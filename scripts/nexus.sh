registry_url="http://44.212.24.102:8081/repository/fintech-app-release/"

# Provide your Nexus registry username and password
username=myusername
password=mypassword

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
