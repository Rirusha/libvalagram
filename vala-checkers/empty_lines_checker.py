#!/bin/python3

import sys
import os
import re

def check_indentation (file_path, root_dir) -> list[str]:
    file_err_list = []
    
    with open (file_path, 'r') as file:
        lines = file.readlines ()

    empty_lines_count = 0
    for i, line in enumerate (lines):
        if line.strip () == "":
            empty_lines_count += 1
        else:
            empty_lines_count = 0

        if empty_lines_count > 1:
            file_err_list.append (f"To many empty lines in file '{file_path.replace (root_dir, "", 1)}' at line {i + 1}: \"{line.rstrip ()}\".")

    return file_err_list

def scan_directory (directory) -> list[str]:
    err_list = []
    
    for root, dirs, files in os.walk (directory):
        for file in files:
            if (file.endswith ('.vala') or file.endswith ('.blp')) and (("/data/ui" in root or "/src" in root or "/tests" in root) and "/.flatpak/" not in root):
                file_path = os.path.join (root, file)

                file_err_list = check_indentation (file_path, directory)

                if (file_err_list):
                    err_list += file_err_list

    return err_list


if __name__ == "__main__":
    err_list = scan_directory (sys.argv[1])
    
    if (len (err_list) != 0):
        print (*err_list, sep="\n", end="\n\n")
        print ("\033[1m" + "\033[91m" + f"Total mistakes: {len (err_list)}" + "\033[0m")
        sys.exit (1)
    else:
        print ("\033[1m" + "\033[92m" + "No mistakes found" + "\033[0m")
