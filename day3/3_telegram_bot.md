# Telegram bot

## Подготовка

### BotFarther

![bot farther](../img/bot_1.jpg)

![bot farther](../img/bot_2.jpg)

* /newbot - короткое описание, никнейм_bot. Запишите токен
* или воспользуйтесь моим (удалите пробелы): 5547185149 : AAEwdOAD-pSAvNwcjsl4Km_pwEcwN1c9DdY
* найдите ваш бот в телефоне, нажмите start. 
* или мой бот:  t.me/kr_photo_bot
* Найдите ваш Id
* или возьмите мой (будете мне присылать): 476691449

## getupdates

`curl https://api.telegram.org/botTOKEN/getUpdates`

## sendMessage

`curl -X POST --data "chat_id=476691449" --data "text=hello from bot" "https://api.telegram.org/bot<token>/sendMessage"`

## sendphoto

`curl https://api.telegram.org/botTOKEN/sendphoto -F chat_id=11112222333 -F photo=@newpic.jpg`

# Автоматизация

## Исполняемый файл на bash

Запустите редактор `nano bot_send.sh`.

(где bot_send.sh - это имя файла с нашей будущей программой).

Вставьте туда команду отсылки сообщений боту.

Сохраните и выйдите их редактора (Ctlr-X)

Дайте файлу исполняемый аттрибут:

```bash
chmod +x bot_send.sh
```

## запуск скрипта при загрузке

`crontab -e`

редактируем:

`@reboot /bin/bash /home/student/bot_send.sh`

## запуск по расписанию

В 0 минут каждого часа с 9 до 18 каждый день 25-29 июля.

`0 9-18 25-29 7 * /home/student/bot_send.sh`

