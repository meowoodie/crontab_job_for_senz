echo "Input parameter is: "$1" "$2
year=$(date +"%Y")
month=$(date +"%m")
day=$(date +"%d")
event_from=$year"-"$month"-"$day" "$1
echo "The Early Morning event from "$event_from
event_from_unix=$(date -d "$event_from" +"%s")"000"
echo "Format of unixtime is "$event_from_unix

event_to=$year"-"$month"-"$day" "$2
echo "The Early Morning event to "$event_to
event_to_unix=$(date -d "$event_to" +"%s")"000"
echo "Format of unixtime is "$event_to_unix

curl -X POST -H "Content-Type: application/json; charset=utf-8" \
	-H "X-senz-Auth: 5548eb2ade57fc001b0000019c47999a5c3e4b7a4ebb283ea16f6d33" \
	-d '{"startTime":'$event_from_unix',"endTime":'$event_to_unix'}' \
	http://api.trysenz.com/datasource/timeline/eventTimer

