#!/usr/bin/env sh

set -e

rm -rf dist

npm run build

cd dist

git init 
git add -A
git commit -m 'deploy'
git push -f git@github.com:ZkEdison/ts-axios-doc.git master:gh-pages
