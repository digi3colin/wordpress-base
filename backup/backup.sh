#!/bin/bash

# Get the day of week
_dow="$(date +'%A')"

sqlite3 ../db/db.sqlite << EOF
.timeout 20000
.backup ./daily/db_${_dow}.sqlite
EOF