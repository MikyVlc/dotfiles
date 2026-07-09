#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar main
# El "2>&1 | tee -a /tmp/polybar.log" redirecciona la salida de error
# y la guarda en un archivo de registro para ayudarte a depurar problemas.
echo "---" | tee -a /tmp/polybar.log
#polybar example 2>&1 | tee -a /tmp/polybar.log & disown

#echo "Barra 'main' lanzada..."
polybar example 2>&1 | tee -a /tmp/polybar.log & disown
polybar example2 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar lanzada en ambos monitores"
