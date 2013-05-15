 #!/bin/bash
CURL="/usr/bin/curl"
GAWK="/usr/bin/gawk"
URL=$1
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo " Time_Connect Time_startTransfer Time_total "
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
