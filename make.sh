#!/bin/bash

# clean dist
rm -Rf dist/*


# prepare
git submodule update --init

cd adminer
git submodule update --init
./compile.php
cd ..


# copy stuff into dist
cp -R adminer/adminer.php adminer/plugins/ dist/

cp -R adminer-theme/lib/css/ adminer-theme/lib/fonts/ adminer-theme/lib/images/ dist/
cp adminer-theme/lib/plugins/AdminerTheme.php dist/plugins/

cp lib/adminer-colorfields/colorfields.php dist/plugins/
cp lib/AdminerDumpMarkdownDict/AdminerDumpMarkdownDict.php dist/plugins/
cp lib/adminer-floatThead/floatThead.php  dist/plugins/
cp lib/AdminerPHPExport/AdminerDumpArray.php dist/plugins/
cp lib/9ee4a9f1405ffc1465f59e03768e2768/readable-dates.php dist/plugins/
cp lib/adminer.resize/resize.php dist/plugins/
cp lib/AdminerPlugins/searchAutocomplete.php dist/plugins/
cp lib/icyz-adminer/plugins/suggest-tablefields.php dist/plugins/

cp index.php dist/
