#!/usr/bin/env python
import os
import os.path
import sys
import time

# tp settings
TRASH_DIR = "~/.local-trash"

def check_trash_dir(trash_dir):
    if os.path.islink(trash_dir) or os.path.isfile(trash_dir):
        print(trash_dir + " exists and is not a directory.")
        sys.exit(1)
    if not os.path.isdir(trash_dir):
        # create the directory
        try:
            os.mkdir(trash_dir)
        except:
            print(trash_dir + " could not be created.")
            sys.exit(1)
        print(trash_dir + " created.")

def move_item_to_trash(item_path,trash_dir):
    # just remove if item_path is a link
    if os.path.islink(item_path):
        os.remove(item_path)
        return
    # normalize the item_path
    item_path = os.path.normpath(item_path)
    base_name = os.path.basename(item_path)
    time_stamp = time.strftime('%Y-%m-%d-%H%M%S')
    trash_file = trash_dir + '/' + time_stamp + '-' + base_name
    # move item_path to trash_dir if possible
    if os.path.isfile(item_path) or os.path.isdir(item_path):
        try:
            os.rename(item_path,trash_file)
        except:
            print('tp: could not trash "{0}".'.format(item_path))
    else:
        print('tp: "{0}" is not a file.'.format(item_path))

if __name__ == '__main__':
    # expand and normalize TRASH_DIR
    trash_dir = os.path.expanduser(TRASH_DIR)
    trash_dir = os.path.normpath(trash_dir)
    # print simple message if no arguments
    if len(sys.argv) == 1:
        print('tp: a simple trash script to move unwanted files to "{0}".'.format(trash_dir))
        sys.exit(0)
    # check for existence of trash dir
    check_trash_dir(trash_dir)
    # move items to trash dir
    for item_path in sys.argv[1:]:
        move_item_to_trash(item_path,trash_dir)
