#!/bin/sh

set -e

echo "=== Test GET ==="
curl -X GET -s localhost:8080 | grep "get" 

echo "=== Test POST ==="
curl -X POST -s localhost:8080 | grep "post"

echo "Success"