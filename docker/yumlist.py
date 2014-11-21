import sys
import re
import subprocess
import itertools

p = subprocess.Popen('yum list installed'.split(), stdout=subprocess.PIPE)
output = p.communicate()[0]
pkgs = re.sub(r'^(?:[\w\s:]+\s+)*Installed Packages\s+', '', output)
pkgs = pkgs.split()
pkgs = itertools.izip(*[iter(pkgs)] * 3)
with open(sys.argv[1], 'w') as f:
    for pkg in pkgs:
        print >>f, '%-20s\t%s' % (pkg[0], pkg[1])
