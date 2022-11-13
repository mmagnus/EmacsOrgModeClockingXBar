#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""

"""
import os
import argparse
from pathlib import Path
home = str(Path.home())

def get_parser():
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)

    #parser.add_argument('-', "--", help="", default="")
    parser.add_argument("-v", "--verbose",
                        action="store_true", help="be verbose")
    parser.add_argument("-s", "--speak",
                        action="store_true")
    parser.add_argument("--effort")
    parser.add_argument("--file", help="", default= home + os.sep + ".OrgModeClockingXBar.txt") # nargs='+')
    return parser

def clean_time(time):
    time = time.replace('[', '').replace(']', '').replace(':', '')
    return int(time)

if __name__ == '__main__':
    parser = get_parser()
    args = parser.parse_args()
    f = open(args.file).read()
    
    if f == 'Idle?':
        # cmd = "osascript -e 'display notification \"No task!\" with title \"Emacs OrgMode\"'"
        # os.system(cmd)
        if args.speak:
            # cmd = "osascript -e 'say \"No task!\"' &" 
            os.system(cmd)
       # assert False, 'No task'
        print('!! clock in !!')
    else:
        print(f)
    
    ## if '/' in f: # [0:29/0:25] (u6 paper process to challenge my spl math)')
    ##     time, task = f.split('(')
    ##     task = task.replace(')', '')
    ##     time, effort = time.split('/') #  [0:13/0:25]
    ##     time = clean_time(time)
    ##     effort = clean_time(effort)
    ## #print(time, effort)

    ## effort = 100000
    ## if time > effort:
    ##     cmd = "osascript -e 'display notification \"Time is up!\" with title \"Emacs OrgMode\"'"
    ##     os.system(cmd)
    ##     print('\033[1;31;1m0:' + str(time) + '/0:' + str(effort) + ' ' + task)
    ## elif effort - time < 5: # 25 - 20 = 5
    ##     print('\033[1;33;1m0:' + str(time) + '/0:' + str(effort) + ' ' + task)
    ## else:
    ##     print('\033[1;32;1m0:' + str(time) + '/0:' + str(effort) + ' ' + task)
