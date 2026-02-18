#!/bin/bash
set -e
cd "$(dirname "$0")"

echo "Kontrola prihlaseni k Vercel..."
if ! npx vercel whoami >/dev/null 2>&1; then
  echo "Nejsi prihlasen. Spoustim: npx vercel login"
  npx vercel login
fi

echo "Nasazuji na Vercel production..."
npx vercel --prod --yes --name admin-cenik-sysmail

echo "Hotovo. URL je vypsana vyse."
