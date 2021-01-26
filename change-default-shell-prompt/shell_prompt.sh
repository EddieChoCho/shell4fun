#!/bin/sh

weather_icon(){
    weather_code="$(curl -s https://opendata-download-metfcst.smhi.se/api/category/pmp3g/version/2/geotype/point/lon/18.063240/lat/59.334591/data.json | jq '.timeSeries[0].parameters[] | select(.name | contains ("Wsymb2")) | .values[0]')"
    echo "$(_emoji_weather $weather_code)"
}

_emoji_weather(){
    case ${1} in
        1)
            echo ☀️
            ;;
        2)
            echo 🌤
            ;;
        3)
            echo ⛅️
            ;;
        4)
            echo 🌥
            ;;
        5)
            echo ☁️
            ;;
        6)
            echo ☁️
            ;;
        7)
            echo 🌫
            ;;
        8)
            echo 🌧
            ;;
        9)
            echo 🌧🌧
            ;;
        10)
            echo 🌧🌧
            ;;
        11)
            echo ⛈
            ;;
        12)
            echo 🌨
            ;;
        13)
            echo 🌨
            ;;
        14)
            echo 🌨🌨
            ;;
        15)
            echo 🌨
            ;;
        16)
            echo 🌨🌨
            ;;
        17)
            echo 🌨🌨
            ;;
        18)
            echo 🌧
            ;;
        19)
            echo 🌧🌧
            ;;
        20)
            echo 🌧🌧
            ;;
        21)
            echo ⛈
            ;;
        22)
            echo 🌨
            ;;
        23)
            echo 🌨🌨
            ;;
        24)
            echo 🌨🌨
            ;;
        25)
            echo 🌨
            ;;
        26)
            echo 🌨🌨
            ;;
        27)
            echo 🌨🌨
            ;;
        *)
            echo ❔
    esac
}