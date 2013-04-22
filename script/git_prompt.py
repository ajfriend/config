#!/usr/bin/env python

from subprocess import Popen, PIPE
import sys

def shell_command(command_str):
    p = Popen(command_str.split(),stdout=PIPE,stderr=PIPE)
    out_str = p.communicate()[0]
    return_code = p.returncode
    return (return_code,out_str)

def git_branch():
    (return_code, out_str) = shell_command('git branch')
    if return_code != 0:
        return ''
    if out_str == '':
        return ''
    branch_list = out_str.split('\n')
    branch_name = [x for x in branch_list if len(x) > 0 and x[0] == '*'][0][2:]
    return branch_name

def git_dirty():
    (return_code, out_str) = shell_command('git status -s')
    if return_code != 0:
        return ''
    dirty_list = out_str.split('\n')
    if len(dirty_list) > 1:
        return '*'
    else:
        return ''
    print(dirty_list)
    #branch_name = [x for x in branch_list if len(x) > 0 and x[0] == '*'][0][2:]
    #return branch_name

if __name__ == '__main__':
    branch = git_branch()
    if branch:
        dirty = git_dirty()
        sys.stdout.write('(' + branch + dirty + ')')
        #print('(' + branch + dirty + ')',end='')
