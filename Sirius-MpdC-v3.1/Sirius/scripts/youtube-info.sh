#!/bin/bash

# Verificar si playerctl puede controlar el navegador
if playerctl -l | grep -q "chromium"; then
	PLAYER=$(playerctl -l | grep "chromium" | head -n 1)
elif playerctl -l | grep -q "firefox"; then
        PLAYER=$(playerctl -l | grep "firefox" | head -n 1)
else
      	echo "Sin Música" > /tmp/youtube_status
    	echo "" > /tmp/youtube_title
    	echo "" > /tmp/youtube_artist
    	echo "" > /tmp/youtube_duration
      	sleep 1
      	exit 0
fi
# Extraer información de reproducción
TITLE=$(playerctl -p $PLAYER metadata title)
ARTIST=$(playerctl -p $PLAYER metadata artist)
STATUS=$(playerctl -p $PLAYER status)
DURATION=$(playerctl -p $PLAYER metadata mpris:length)

DURATION=$(($DURATION / 1000000))

MINUTES=$(($DURATION / 60))
SECONDS=$(($DURATION % 60))

FORMATTED_DURATION=$(printf "%d:%02d" $MINUTES $SECONDS)

# Exportar valores a archivos temporales
echo "$STATUS" > /tmp/youtube_status
echo "$TITLE" > /tmp/youtube_title
echo "$ARTIST" > /tmp/youtube_artist
echo "$FORMATTED_DURATION" > /tmp/youtube_duration

sleep 1
