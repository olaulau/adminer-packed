# adminer-packed
adminer packed with theme and plugins

## Summarry
- [what's included](#what-s-included)  
- [installation](#installation)  
- [screenshots](#screenshots)  


## what's included
- [adminer](https://github.com/vrana/adminer)
- [adminer-theme](https://github.com/pematon/adminer-theme) green
- official plugins enabled :
    - DumpBz2
    - DumpDate
    - DumpJson
    - DumpXml
    - DumpZip
    - EnumOption
    - ForeignSystem
    - StructComments
    - TablesFilter
    - Tinymce
- unofficial plugins added and enabled
    - Colorfields
    - DumpMarkdownDict
    - FloatThead
    - DumpArray
    - ReadableDates
    - Resize
    - searchAutocomplete
    - SuggestTableField


## installation

### clone
```
git clone --recursive https://github.com/olaulau/adminer-packed
```
### generate / update

```
cd adminer-packed
./make.sh
cd ..
```
### install
``sudo ln -s adminer-packed/dist /var/www/html/adminer``  
--> [http:/localhost/adminer/](http:/localhost/adminer/)


## screenshots
![Image of Adminer](doc/adminer.png)
