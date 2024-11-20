#!/usr/bin/bash
# HAVE TO START FROM REPO ROOT

set -e

current_api_version=$(python3 auto-update/print_api_version.py)
tag_name="v$current_api_version"

if [ $tag_name = $(git describe --tags --abbrev=0) ]; then
    echo "Nothing to do"
    exit 0
fi

rm -rf auto-update/altrepo2vala/
rm -rf lib/client.vala lib/objects/*
git clone https://github.com/Rirusha/altrepo2vala.git auto-update/altrepo2vala
echo "*" >> auto-update/altrepo2vala/.gitignore

python3.12 auto-update/altrepo2vala/generator.py 'Vladimir Vaskov' lib
python3.12 auto-update/update_meson.py lib/meson.build

git add .
if git commit -m "update: regular lib update" ; then
    python3.12 auto-update/update_main_meson.py meson.build $current_api_version

    git add .
    git commit -m "chore: bump version to $current_api_version"
    git push

    git tag $tag_name
    git push origin $tag_name
else
    echo "Nothing to do"
fi
