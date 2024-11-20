#!/usr/bin/python3

import sys
import os

meson_build_path = sys.argv[1]
new_version = sys.argv[2]

meson_lines:list[str] = []

with (open(meson_build_path, 'r')) as f:
    meson_lines = f.readlines()

ignore = False
with (open(meson_build_path, 'w')) as f:
    for line in meson_lines:
        if line.strip().startswith("version:"):
            f.write(f'  version: \'{new_version}\',\n')
        elif line.startswith('api_version = '):
            f.write(f'api_version = \'{new_version.split('.')[0]}\'\n')
        else:
            f.write(line)
