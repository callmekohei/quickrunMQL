# quickrunMQL

#### prepare
```
$ git clone https://github.com/callmekohei/quickrunMQL
$ bash install.bash
```

### quickrun setting
change cmdopt `/path/to/quickrunMQL/quickrunMQL.bash`
```vim
let g:quickrun_config.mql4 = {
    \  'exec': [ '%c %o %s:p:t' ]
    \ ,'command':'bash'
    \ ,'cmdopt' :'$HOME/tmp/quickrunMQL/quickrunMQL.bash'
\}
```

### Usage
```
// launch MetaTrader and MetaEditor

// open mq4.file on MetaEditor

// move to MQL4/Scripts folder
$ cd $WINEPREFIX/drive_c/Program Files/OANDA - MetaTrader/MQL4/Scripts/

// edit script file
$ vim foo.mq4
```
