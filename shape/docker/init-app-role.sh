#!/usr/bin/env bash
# Bind-mounted from the job workspace into the Postgres container; runs once on a fresh volume.
set -euo pipefail
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<'SQL'
CREATE ROLE app_user LOGIN PASSWORD 'app' NOSUPERUSER NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE DATABASE smoke_test;
GRANT ALL PRIVILEGES ON DATABASE smoke_test TO app_user;
SQL
