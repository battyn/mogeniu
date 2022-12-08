#!/bin/sh
if [ ! -f UUID ]; then
  UUID="819628fd-73e9-4afb-8c68-24f58866361c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

