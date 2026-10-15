#!/bin/sh
# Builds catalog.sqlite and manifest.json from schema.sql and seed.sql.
# Usage:  ./build.sh 0.1.0
set -e
VERSION="$1"
if [ -z "$VERSION" ]; then echo "Usage: ./build.sh <version>"; exit 1; fi

rm -f catalog.sqlite manifest.json
sqlite3 catalog.sqlite < schema.sql
sqlite3 catalog.sqlite < seed.sql
sqlite3 catalog.sqlite "INSERT INTO meta VALUES ('version', '$VERSION'), ('built', date('now'));"

# Stop if the file is damaged, then pack it as small as possible.
[ "$(sqlite3 catalog.sqlite 'PRAGMA integrity_check;')" = "ok" ] || { echo "Integrity check failed"; exit 1; }
sqlite3 catalog.sqlite "VACUUM;"

SIZE=$(wc -c < catalog.sqlite | tr -d ' ')
SHA=$(shasum -a 256 catalog.sqlite | cut -d ' ' -f 1)
COUNT=$(sqlite3 catalog.sqlite "SELECT COUNT(*) FROM fitsfiles;")
cat > manifest.json <<JSON
{
  "version": "$VERSION",
  "file": "catalog.sqlite",
  "size": $SIZE,
  "sha256": "$SHA",
  "count": $COUNT
}
JSON
echo "Built catalog $VERSION: $COUNT files, $SIZE bytes"