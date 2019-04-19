# awesome-console-services

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

A curated list of awesome console services (reachable via HTTP, HTTPS and other network protocols)

- [awesome-console-services](#awesome-console-services "awesome-console-services")
  - [IP address](#IP-address "IP address")
  - [Geolocation](#Geolocation "Geolocation")
  - [Text Sharing (like
    pastebin)](#Text-Sharing-like-pastebin "Text Sharing (like pastebin)")
  - [URL shortener](#URL-shortener "URL shortener")
  - [File Transfer](#File-Transfer "File Transfer")
  - [Tools](#Tools "Tools")
  - [Monitoring](#Monitoring "Monitoring")
  - [Weather](#Weather "Weather")
  - [News](#News "News")
  - [Map](#Map "Map")
  - [Exchange rates and financial
    information](#Exchange-rates-and-financial-information "Exchange rates and financial information")
  - [Manuals, cheat sheets and
    FAQs](#Manuals-cheat-sheets-and-FAQs "Manuals, cheat sheets and FAQs")
  - [Dictionaries and
    translators](#Dictionaries-and-translators "Dictionaries and translators")
  - [Messages/texts/jokes/fortunes/names
    generators](#Messagestextsjokesfortunesnames-generators "Messages/texts/jokes/fortunes/names generators")
  - [Chats, games and fun](#Chats-games-and-fun "Chats, games and fun")
  - [Internet speed test](#Internet-speed-test "Internet speed test")
  - [Clients](#Clients "Clients")

## IP address

* `curl https://canihazip.com/s`
* `curl ipinfo.io/ip`
* `curl icanhazip.com`
* `curl curlmyip.net`
* `curl ipecho.net/plain`
* `curl ifconfig.pro`
* `curl ip-addr.es`
* `dig +short myip.opendns.com @resolver1.opendns.com`
* `curl ident.me` (see http://api.ident.me/ for the full API reference)
* `curl ipaddr.site`
* `curl ifconfig.co`
* `curl echoip.de` (see https://www.echoip.de/)

## Geolocation

* `curl ipinfo.io/8.8.8.8` or `curl ipinfo.io/8.8.8.8/loc`
* `curl ifconfig.co/country` or `curl ifconfig.co/city` or `curl ifconfig.co/country-iso` or `http ifconfig.co/json`

## Text Sharing (like pastebin)

* `ix.io`
* `sprunge.us`
* `0x0.st`
* `clbin.com`
* `echo "Hello world!" | nc termbin.com 9999`

## URL shortener

* `curl -s http://tinyurl.com/api-create.php?url=http://www.google.com`
* `curl -X POST --data "http://google.com" http://iret.ml/shorten`

## File Transfer

* `curl --upload-file <file> transfer.sh/<filename>`

## Tools

* `curl qrenco.de/STRING` or `echo STRING | curl -F-=\<- qrenco.de` — create QR-code for a string ([chubin/qrenco.de](https://github.com/chubin/qrenco.de))

## Monitoring

* `curl ping.gg`

## Weather 

* `curl wttr.in` or `curl wttr.in/Berlin` - the right way to check the weather 
* `finger oslo@graph.no`

## News

* `curl getnews.tech/world+cup` - fetch the latest news

## Map

* `telnet mapscii.me` - show a zoomable world map

## Exchange rates and financial information

* `curl rate.sx` - get cryptocurrencies exchange rates 
* `curl moneroj.org` - get Monero exchange rate

## Manuals, cheat sheets and FAQs

* `curl cheat.sh` - UNIX/Linux commands cheat sheets using curl ([chubin/cheat.sh](https://github.com/chubin/cheat.sh))

## Dictionaries and translators

* `curl 'dict://dict.org/d:command line'`

## Messages/texts/jokes/fortunes/names generators

* `git commit -m $(curl -sk https://whatthecommit.com/index.txt)` — generate random commit message
* `curl -H 'Accept: text/plain' foaas.com/cool/:from` — fuck off as a service
* `curl pseudorandom.name` — generate a pseudo random (American?) name ([treyhunner/pseudorandom.name](https://github.com/treyhunner/pseudorandom.name))
* `curl -s https://uinames.com/api/?region=france\&amount=25 | jq '.[] | .name +" " + .surname'` — generate 25 random french names
* `curl https://icanhazdadjoke.com` — random jokes

## Chats, games and fun

* `nc towel.blinkenlights.nl 23` — watch StarWars in terminal
* `ssh chat.shazow.net` — chat over SSH ([shazow/ssh-chat](https://github.com/shazow/ssh-chat))
* `curl parrot.live` — display an animated party parrot ([hugomd/parrot.live](https://github.com/hugomd/parrot.live))
* `curl byemck.atulr.com` — display animated goodbye message for colleagues ([master-atul/byemck](https://github.com/master-atul/byemck))

## Internet speed test

* `curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -`

## Clients

At least on of the clients, that you need to access these services, is installed in almost every UNIX/Linux system.

* [curl](https://github.com/curl/curl)
* [httpie](https://github.com/jakubroztocil/httpie) — modern command line HTTP client
* [wget](https://www.gnu.org/software/wget/)
* [wget2](https://gitlab.com/gnuwget/wget2)
