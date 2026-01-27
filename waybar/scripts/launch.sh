WAYBAR_PROCESS="waybar"

if pgrep -x "$WAYBAR_PROCESS" > /dev/null
then
    echo "Waybar está rodando. Matando o processo..."
    killall -9 "$WAYBAR_PROCESS"
else

    echo "Waybar não está rodando. Iniciando..."
    "$WAYBAR_PROCESS" &
fi
