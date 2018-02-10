# ===========================================================================
#  FILE    : mql
#  AUTHOR  : callmekohei <callmekohei at gmail.com>
#  License : MIT license
# ===========================================================================

file=$1
MetaEditor=("$WINEPREFIX/drive_c/Program Files/OANDA - MetaTrader/metaeditor.exe")
SendsKeyCMD="$HOME/tmp/quickrunMQL/quickrunMQL.exe"

wine "${MetaEditor[@]}" /s /log:foo.log /compile:$file 2>/dev/null
iconv -f utf-16 -t utf-8 foo.log | sed -e "s///g" > bar.log

echo "───── MetaEditor Compiler ─────"
cat bar.log

if cat bar.log | fgrep 'Result 0 error(s), 0 warning(s)' 1>/dev/null ; then

    echo "───── MetaTrader Terminal ─────"
    echo $SendsKeyCMD | wine cmd 1>/dev/null
    echo $SendsKeyCMD | wine cmd 1>/dev/null
    echo $SendsKeyCMD | wine cmd 1>/dev/null
    cat ../Logs/$(date +"%Y%m%d").log | tail -4 | sed -e "s///g"

fi

rm foo.log
rm bar.log

