#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c42ae422-3bff-4fe5-9009-cee1e86daf2c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

