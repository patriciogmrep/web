#!/usr/bin/env bash
# IndexNow — notifica a Bing/Yandex/etc. de las URLs actualizadas del sitio.
# Uso: bash scripts/indexnow-ping.sh
# Corre después de un deploy exitoso a producción para acelerar la indexación.

set -euo pipefail

KEY="a7f2e8b1c9d4f6a3d5b8c1e9f2a6d3e7"
HOST="patriciogarciamoritan.com"
KEY_LOCATION="https://${HOST}/${KEY}.txt"

# Extrae las URLs del sitemap y las manda todas juntas
URLS=$(curl -s "https://${HOST}/sitemap-0.xml" \
  | grep -oE '<loc>[^<]+</loc>' \
  | sed -E 's|</?loc>||g')

if [ -z "$URLS" ]; then
  echo "❌ No se encontraron URLs en el sitemap."
  exit 1
fi

# Arma el JSON con la lista de URLs
URL_LIST_JSON=$(echo "$URLS" | python3 -c "
import sys, json
urls = [line.strip() for line in sys.stdin if line.strip()]
print(json.dumps(urls))
")

PAYLOAD=$(python3 -c "
import json
print(json.dumps({
  'host': '${HOST}',
  'key': '${KEY}',
  'keyLocation': '${KEY_LOCATION}',
  'urlList': ${URL_LIST_JSON},
}))
")

echo "📡 Enviando $(echo "$URLS" | wc -l | tr -d ' ') URLs a IndexNow..."
echo "$URLS" | sed 's/^/  · /'
echo ""

RESPONSE=$(curl -sS -o /dev/null -w "%{http_code}" \
  -X POST "https://api.indexnow.org/indexnow" \
  -H "Content-Type: application/json; charset=utf-8" \
  -d "$PAYLOAD")

case "$RESPONSE" in
  200) echo "✅ 200 OK — Recibido y procesándose." ;;
  202) echo "✅ 202 Accepted — En cola." ;;
  400) echo "❌ 400 Bad Request — Payload malformado." ;;
  403) echo "❌ 403 Forbidden — Key no coincide con la ubicación declarada." ;;
  422) echo "❌ 422 Unprocessable — Alguna URL no pertenece al host." ;;
  429) echo "❌ 429 Too Many Requests — Rate limit. Reintentá en unos minutos." ;;
  *)   echo "⚠️  HTTP $RESPONSE — Respuesta inesperada." ;;
esac
