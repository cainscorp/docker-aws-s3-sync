#!/bin/ash

set -e

echo "$(date) Start"

if [[ "$1" == 'down' ]]; then
  aws s3 sync s3://$BUCKET$BUCKET_PATH /data $PARAMS
else
  aws s3 sync /data s3://$BUCKET$BUCKET_PATH $PARAMS
fi

echo "$(date) End"
