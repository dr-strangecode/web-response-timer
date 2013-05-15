 #!/bin/bash
CURL="/usr/bin/curl"
GAWK="/usr/bin/gawk"
URL=$1
COUNT=$2
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo " Time_Connect Time_startTransfer Time_total "
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
temp=`echo $result | $GAWK -F: '{ print $3}' | cut -d' ' -f3`

i=2
while [ $i -le $COUNT ]
do
result=`$CURL -k -o /dev/null -s -w %{time_connect}:%{time_starttransfer}:%{time_total} $URL`
echo $result | $GAWK -F: '{ print $1" "$2" "$3}'
temp2=`echo $result | $GAWK -F: '{ print $3}' | cut -d' ' -f3`
temp=`echo "$temp + $temp2" | bc -l`
i=`expr $i + 1`
done


avg=`echo "$temp / $COUNT" | bc -l`
echo "Average: $avg"
