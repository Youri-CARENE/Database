#!/bin/bash

# Start PostgreSQL
service postgresql start

# Run any additional scripts
if [ -d "/docker-entrypoint-initdb.d/" ]; then
    for f in /docker-entrypoint-initdb.d/*; do
        case "$f" in
            *.sh)     echo "$0: running $f"; . "$f" ;;
            *.sql)    echo "$0: running $f"; psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" < "$f"; echo ;;
            *)        echo "$0: ignoring $f" ;;
        esac
        echo
    done
fi

# Keep the container running
tail -f /dev/null
