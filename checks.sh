#Kernell version is currently running
uname -a
#Check size of the directory
du -sh /home
du -cksh *
#Check open ports
netstat -tulpn
#Which process have /some/file open
lsof /var/log/nginx/access.log
#Where is the binary for process
lsof -p 111 | grep bin # .so library, log logging
#Which process is listening on port X
lsof -i :80

grep -F PRETTY_NAME /etc/*releas*
`echo $SHELL` --version
nginx -v
gdb --version
nginx -T
strace nginx -T
# switch to root check jobs
sudo su
crontab -l
systemctl list-unit-files | grep enabled
systemctl daemon-reload
