#!/bin/sh
if [ ! -f UUID ]; then
  UUID="84cd79ae-38f2-46fe-978f-3530766ebd81"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

