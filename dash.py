#! /usr/bin/env python
# -*- coding: utf-8 -*-

import os

IGNORE = (
    os.path.basename(__file__),
    '.git',
    '.gitignore',
)

if __name__ == "__main__":
    home = os.path.expanduser('~')
    files = os.listdir('.')
    for file in files:
        if file in IGNORE:
            continue

        dotfile = os.path.join(home, file)
        if not os.path.exists(dotfile):
            file = os.path.abspath(file)            
            os.symlink(file, dotfile)
            print "Added dotfile %s" % dotfile
        else:
            print "Skipped dotfile %s" % dotfile

