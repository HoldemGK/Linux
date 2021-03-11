tar -cp --one-file-system --ignore-failed-read /home/user/Docs | pv -s $(du -sb "/home/user/Docs" | grep -o '^[0-9]*') | gpg2 --symmetric --s2k-mode 3 --s2k-count 65011712 --s2k-digest-algo SHA512 --s2k-cipher-algo AES256 --batch --passphrase-file my_key.txt -o /media/user/Backup/Docs.tgz.gpg -