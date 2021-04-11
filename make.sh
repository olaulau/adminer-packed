#!/bin/bash

git submodule update --init

cd adminer
git submodule update --init
./compile.php
cd ..

cp -R adminer/adminer.php adminer/plugins/ dist/
cp -R adminer-theme/lib/css/ adminer-theme/lib/fonts/ adminer-theme/lib/images/ dist/
cp adminer-theme/lib/plugins/AdminerTheme.php dist/plugins/
