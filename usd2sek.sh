#!/bin/bash
# This script fetches exchange rate between USD and SEK for a given date
# Based on European central banks public API
# https://exchangeratesapi.io/


if [ "$#" -ne 1 ]
then
  echo "Usage:"
  echo "$0 2010-02-13"
  echo "$0 latest"
  exit 1
fi
DATE="$1"
curl "https://api.exchangeratesapi.io/${DATE}?base=USD" | jq .rates.SEK

