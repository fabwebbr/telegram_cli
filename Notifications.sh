#!/bin/bash

# ID do Grupo para onde será enviado a msg
GROUP_ID=<GROUPID>
# Token do Bot
BOT_TOKEN=<TOKEN>

# this 3 checks (if) are not necessary but should be convenient
if [ "$1" == "-h" ]; then
  echo "Uso: `basename $0` \"Mensagem\""
  exit 0
fi

if [ -z "$1" ]
  then
    echo "Adicione a mensagem de texto (entre aspas)"
    exit 0
fi

if [ "$#" -ne 1 ]; then
    echo "A mensagem precisa estar entre aspas"
    exit 0
fi

curl -s --data "text=$1" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null
