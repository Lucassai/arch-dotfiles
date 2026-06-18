#!/usr/bin/env bash
set -euo pipefail

TARGET="$HOME/Imagens/Capturas de tela/Screenshot-$(date +%F_%T).png"
mkdir -p "$(dirname "$TARGET")"
/usr/sbin/grim "$TARGET"
/usr/sbin/dunstify "Captura de tela de toda a tela feita" -t 1000
