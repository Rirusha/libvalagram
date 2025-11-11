#!/usr/bin/bash
# HAVE TO START FROM REPO ROOT

set -e

rm -rf auto-update/tdlib2vala/
rm -rf lib/client.vala lib/objects/*
git clone https://github.com/Rirusha/tdlib2vala.git auto-update/tdlib2vala
echo "*" >> auto-update/tdlib2vala/.gitignore

owd="$(pwd)"

cd auto-update/tdlib2vala
python3 generator.py 'Vladimir Vaskov' $owd
cd $owd
python3 auto-update/update_meson.py lib/meson.build

echo "*" >> auto-update/tdlib2vala/.gitignore

last_tag=$(git describe --tags --abbrev=0)

version=$(echo $last_tag | sed 's/^v//')
IFS='.' read -r major minor patch <<< "$version"

deleted_files=$(git ls-files --deleted)

if [ -z "$deleted_files" ]; then
    patch=$((patch + 1))
else
    minor=$((minor + 1))
    patch=0
fi

new_version="$major.$minor.$patch"
new_tag="v$major.$minor.$patch"

rm -rf auto-update/tdlib2vala/

git add .
if git commit -m "update: Regular lib update" ; then
    python3 auto-update/update_main_meson.py meson.build "$new_version"

    git add .
    if  git commit -m "Bump version to $new_version" ; then
        git push

        git tag -a $new_tag -m "Release"
        git push origin $new_tag
        exit 0
    fi
fi

echo "Nothing to do"
