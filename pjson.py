#!/usr/bin/env python

import json
import sys

try:
    input_str = sys.stdin.read()
    print json.dumps(json.loads(input_str, "utf-8"), sort_keys = True, indent = 2)
except ValueError,e:
    sys.stderr.write("Couldn't decode \n %s \n Error : %s"%(input_str, str(e)))
    sys.exit(e)
