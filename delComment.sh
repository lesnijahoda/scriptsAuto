echo "" > clean.conf

while read line; do
    if [[ $line != //* ]]; then
        echo $line >> clean.conf
    fi
done < /etc/kea/kea-dhcp4.conf
