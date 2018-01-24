#!/bin/bash

git checkout master
git pull

vim +PluginInstall +qa
echo Done.

