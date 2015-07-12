#!/bin/bash

version=${1?"Version not specified"}

sed -i "" -e "s/Hello version [0-9]*/Hello version $version/" index.php

git add .
git commit -m "Version $version"
git tag "v$version"
git push --tags origin master
