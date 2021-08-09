#!/bin/bash

cat <<'EOF' | mysql --host=127.0.0.1 -uroot
CREATE USER isucon@'%' IDENTIFIED BY 'isucon';
GRANT ALL on *.* TO isucon@'%';
CREATE USER isucon@'localhost' IDENTIFIED BY 'isucon';
GRANT ALL on *.* TO isucon@'localhost';
EOF
