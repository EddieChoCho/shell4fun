#!/bin/sh

curl -v -X POST https://api.line.me/v2/bot/message/broadcast \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer {channel access token}' \
-d '{
    "messages":[
        {
            "type":"text",
            "text":"Wake the f*** up, Samurai."
        },
        {
            "type":"text",
            "text":"We have a city to burn!"
        }
    ]
}'