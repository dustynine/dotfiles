#!/usr/bin/env python3
import os, datetime, subprocess

def Date():
    #_datetime=datetime.datetime.now.strftime("%A")
    d=datetime.datetime.now()
    _d=d.strftime("%d %B, %Y, %A ")
    return _d

def Time():
    t=datetime.datetime.now()
    _t=t.strftime("%T")
    return _t

def Ram():
    raw = subprocess.run(["free","-h"],stdout=subprocess.PIPE)
    raw = str(raw).split()
    ram = str(raw[15]).strip("\\nSwap:") + '/3.9G'
    #full = raw[10]
    #ram = raw[15],'/',raw[10]
    #raw = raw.split()[1]
    #value = str(raw).split()[6]
    return ram

#def Dspace():

#def Cpu():

#def Wspace():

while True:
    #print('%{A:firefox:} Firefox %{A}')
    print("%{l}",Ram(),"%{c}",Time(),"%{r}",Date())
