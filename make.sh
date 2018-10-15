#!/bin/bash

cd adminer
git submodule update --init
./compile.php
cd ..
git submodule update --init

cp -R adminer/adminer.php adminer/plugins/ .
cp -R adminer-theme/lib/css/ adminer-theme/lib/fonts/ adminer-theme/lib/images/ .
cp adminer-theme/lib/plugins/AdminerTheme.php plugins/
