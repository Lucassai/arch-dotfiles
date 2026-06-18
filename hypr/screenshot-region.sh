#!/usr/bin/env bash
set -euo pipefail

TARGET="$HOME/Imagens/Capturas de tela/$(date +%F_%T).png"
mkdir -p "$(dirname "$TARGET")"
/usr/sbin/grim -g "$(slurp)" "$TARGET"
/usr/sbin/dunstify "Captura de tela da região feita" -t 1000
