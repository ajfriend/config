#!/usr/bin/env python2

import os
import os.path
import sys
import time

TRASH_DIR = '~/.trash-config'

def fixpath(inpath):
    return os.path.abspath(os.path.expanduser(inpath))

def make_dir(path):

    # normalize directory name
    path = fixpath(path)

    # check if path already exists and is not a directory
    if os.path.islink(path) or os.path.isfile(path):
        print(path + ' exists and is not a directory.')
        sys.exit(1)

    # attempt to create trash directory if it does not exist
    if not os.path.isdir(path):
        # create the directory
        try:
            os.mkdir(path)
        except:
            print(path + ' could not be created.')
            sys.exit(1)
        print(path + ' created.')

def move_item_to_trash(item_path,trash_dir):

    # normalize paths
    item_path = fixpath(item_path)
    trash_dir = fixpath(trash_dir)

    # just remove if item_path is a link
    if os.path.islink(item_path):
        try:
            os.remove(item_path)
        except:
            print('could not remove link "{0}".'.format(item_path))
            sys.exit(1)
        return

    # move item_path to trash_dir if possible
    if os.path.isfile(item_path) or os.path.isdir(item_path):
        # check the trash_dir
        make_dir(trash_dir)
        # create timestamped trash filename
        base_name = os.path.basename(item_path)
        time_stamp = time.strftime('%Y-%m-%d-%H%M%S')
        trash_file = trash_dir + '/' + time_stamp + '-' + base_name
        # attempt to delete file
        try:
            os.rename(item_path,trash_file)
        except:
            print('could not trash "{0}".'.format(item_path))
            sys.exit(1)

def make_link(target_file, link_file, trash_dir = TRASH_DIR):
    # normalize file name
    target_file = fixpath(target_file)
    link_file = fixpath(link_file)
    # move link to trash if it already exists
    move_item_to_trash(link_file,trash_dir)
    # create the link
    try:
        os.symlink(target_file,link_file)
    except:
        print('could not create link "{0}" pointing to {1}.'.format(link_file,target_file))
        sys.exit(1)

def bash_configure():
    make_link('bash_profile.sh','~/.bash_profile')
    make_link('bashrc.sh','~/.bashrc')
    make_dir('~/bin')
    make_link('bash_prompt.sh','~/bin/prompt')

if __name__ == '__main__':
    bash_configure()
