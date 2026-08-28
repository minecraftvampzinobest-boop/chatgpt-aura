#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ ! -f paper-26.2-119.jar ]; then
  echo "ERRO: paper-26.2-119.jar nao encontrado."
  exit 1
fi

if [ ! -f eula.txt ] || ! grep -q '^eula=true$' eula.txt; then
  echo "ERRO: aceite a EULA primeiro: eula=true em eula.txt"
  exit 1
fi

echo "Iniciando Paper..."
exec java -Xms2G -Xmx4G -jar paper-26.2-119.jar --nogui
