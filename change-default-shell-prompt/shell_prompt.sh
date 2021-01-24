#!/bin/sh

weather_icon(){
  weather_code=$((1 + $RANDOM % 4))
  echo "$(_emoji_weather $weather_code)"
}

_emoji_weather(){
    case ${1} in
       1)
        echo ☀️
	;;
       2)
        echo ⛅️
	;;
       3)
        echo 🌧
	;;
       4)
        echo ☁️
	;;
    esac
}