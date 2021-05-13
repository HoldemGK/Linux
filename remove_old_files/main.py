#!/usr/bin/env python3

import os
import datetime
import glob
import sys

#argv[0] is your current python file and argv[1] is first argument where you want to delete files from
path = sys.argv[1]

logging_path='/tmp'
extension = ".zip"
days = -21

if not os.path.isdir(logging_path):
    os.mkdir(logging_path)
else:
    print("Directory already exists")

today = datetime.datetime.today()
os.chdir(path)

file=open(logging_path+datetime.datetime.today().strftime('%d-%m-%Y')+'.txt','a')

for root,directories,files in os.walk(path,topdown=False):
    for name in files:
        t = os.stat(os.path.join(root, name))[8]
        filetime = datetime.datetime.fromtimestamp(t) - today
        # extracting the extension from the filename
        file_path = os.path.join(root, name)
        file_extension = os.path.splitext(file_path)[1]
        if (filetime.days <= days) & (extension == file_extension):
            print(os.path.join(root, name), filetime.days)
            file.write(os.path.join(root, name)+' created '+str(-1*filetime.days)+' days ago\n')
            os.remove(os.path.join(root, name))
