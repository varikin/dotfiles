#! /usr/bin/env python
# -*- coding: utf-8 -*-

import os

if __name__ == "__main__":
    home = os.path.expanduser('~')
    files = os.listdir('files')
    for file in files:
        name = '.' + file	
        dotfile = os.path.join(home, name)
        if not os.path.exists(dotfile):
            file = os.path.abspath(file)            
            os.symlink(file, dotfile)
            print "Added dotfile %s" % dotfile
        else:
            print "Skipped dotfile %s" % dotfile

