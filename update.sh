#!/bin/bash

git checkout master
git pull

vim +PluginUpdate +PluginInstall +qa
echo Done.

