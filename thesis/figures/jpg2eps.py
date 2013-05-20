#!/usr/bin/python

import os
# bmeps -c example.jpg example.eps

for files in os.listdir("."):
    if files.endswith(".jpg"):
    	name = files.split('.')[0]
        os.system("bmeps -c %s.jpg %s.eps" % (name, name))