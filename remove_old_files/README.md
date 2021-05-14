# How to remove files older than X days using python script

## Scheduling task at 5 a.m every week

`bash
crontab -e
0 5 * * 1 sudo python3 /home/${USER}/remove_old_files/main.py /var/atlassian/application-data/jira/export
`
