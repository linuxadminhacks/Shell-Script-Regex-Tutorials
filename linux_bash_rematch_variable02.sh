#!/bin/bash

url=$1

if [[ "$url" =~ ^https?://([^/]+) ]]; then
   domain=${BASH_REMATCH[1]}
   echo "Domain name: $domain"
else
   echo "Invalid URL"
fi
