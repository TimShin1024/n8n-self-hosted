#!/bin/bash

# Create n8n config directory if it doesn't exist
mkdir -p /opt/render/.n8n

# Write environment variables to .env file
cat > /opt/render/.n8n/.env << EOL
DB_TYPE=postgresdb
DB_POSTGRESDB_DATABASE=postgres
DB_POSTGRESDB_HOST=aws-0-ap-northeast-2.pooler.supabase.com
DB_POSTGRESDB_PASSWORD=${DB_POSTGRESDB_PASSWORD}
DB_POSTGRESDB_PORT=6543
DB_POSTGRESDB_USER=postgres.gposghdycpmkdyrbwjej
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=${N8N_BASIC_AUTH_USER}
N8N_BASIC_AUTH_PASSWORD=${N8N_BASIC_AUTH_PASSWORD}
N8N_HOST=${N8N_HOST}
N8N_PROTOCOL=https
N8N_PORT=3000
NODE_ENV=production
WEBHOOK_URL=https://${N8N_HOST}/
N8N_ENCRYPTION_KEY=${N8N_ENCRYPTION_KEY}
EOL

# Start n8n
n8n start