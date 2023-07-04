npm config list
npm config set registry http://44.212.24.102:8081/repository/fintech-app-release/

# registry_url="http://44.212.24.102:8081/repository/fintech-app-release/"

# Provide your Nexus registry username and password
username=admin
password=admin123

# Run npm login command using expect
expect <<EOF
spawn npm login --registry
expect "Username: "
send "$username\r"
expect "Password: "
send "$password\r"
expect eof
EOF

npm config set registry http://registry.npmjs.org/
npm config list
sleep 2
