#!/bin/bash

# Define o nome do processo que você quer controlar
WAYBAR_PROCESS="waybar"

# Verifica se o processo da Waybar está em execução
if pgrep -x "$WAYBAR_PROCESS" > /dev/null
then
    # Se estiver em execução, ele mata o processo
    echo "Waybar está rodando. Matando o processo..."
    killall -9 "$WAYBAR_PROCESS"
else
    # Se não estiver em execução, ele inicia o processo em background
    echo "Waybar não está rodando. Iniciando..."
    "$WAYBAR_PROCESS" &
fi
