#!/usr/bin/env python3
import os
import datetime
import subprocess
from time import sleep


def date():
    d = datetime.datetime.now()
    date = d.strftime("%d %B, %Y, %A ")
    return date

def time():
    t = datetime.datetime.now()
    time = t.strftime("%T")
    return time

def ram():
    raw = str(subprocess.run(["free","-h"],stdout=subprocess.PIPE)).split()
    ram = 'RAM: ' + raw[15].strip("\\nSwap:") + '/3.9G'
    return ram

def disk():
    raw = str(subprocess.run(["df","-h"],stdout=subprocess.PIPE)).split()
    disk = '/home: ' + raw[41] + '/177G; /:' + raw[21] + '/69G;'
    # 20 - all root, 21 - occup root, 40 - all home, 41 - occup home
    # replace if needed
    return disk

#def workspace():



while True:
    #print('%{A:firefox:} Firefox %{A}')
    print("%{l}",disk(),ram(),"%{c}",time(),"%{r}",date())
    #sleep(0.25)
