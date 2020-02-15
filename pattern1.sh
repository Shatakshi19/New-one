case "$1" in
'start')

echo "starting application"
/usr/bin/startpc

;;

'stop')

echo" stopping application"
/usr/bin/stoppc
;;

'restart')

echo "usage: $0 [start|stop]"
;;

esac


