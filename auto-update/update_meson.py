#!/usr/bin/python3

import sys
import os

meson_build_path = sys.argv[1]

meson_lines:list[str] = []

with (open(meson_build_path, 'r')) as f:
    meson_lines = f.readlines()

ignore = False
with (open(meson_build_path, 'w')) as f:
    for line in meson_lines:
        if line.startswith('vala_sources = files('):
            f.write(line)
            ignore = True

        if ignore and line.startswith(')'):
            all_files = list(map(lambda x: f'  \'objects/{x}\',\n', os.listdir('lib/objects')))
            all_files.append('  \'client.vala\',\n')
            all_files.append('  \'requests-manager.vala\',\n')
            all_files.append('  \'td-jsoner.vala\',\n')
            all_files.append('  \'utils.vala\',\n')
            all_files.sort()
            f.writelines(all_files)
            ignore = False

        if not ignore:
            f.write(line)
    