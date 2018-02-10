# quickrunMQL

### Environmet
```
$ sw_vers 
ProductName:	Mac OS X
ProductVersion:	10.13.3
BuildVersion:	17D47

$ wine --version
wine-3.0
```

### Prepare
```
$ git clone https://github.com/callmekohei/quickrunMQL
$ bash install.bash
```

### Quickrun setting
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

// open foo.mq4 on MetaEditor

// move to MQL4/Scripts folder
$ cd $WINEPREFIX/drive_c/Program Files/OANDA - MetaTrader/MQL4/Scripts/

// edit script file
$ vim foo.mq4
```
