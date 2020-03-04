# awesome-console-services

[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

A curated list of awesome console services (reachable via HTTP, HTTPS and other network protocols).
Structured data of the list (kept in sync) is in [structured.yaml](structured.yaml).

  - [IP Address](#IP-Address "IP Address")
  - [Geolocation](#Geolocation "Geolocation")
  - [Text Sharing](#Text-Sharing "Text Sharing")
  - [URL Shortener](#URL-Shortener "URL Shortener")
  - [File Transfer](#File-Transfer "File Transfer")
  - [Browser](#Browser "Browser")
  - [Tools](#Tools "Tools")
  - [Monitoring](#Monitoring "Monitoring")
  - [Weather](#Weather "Weather")
  - [News](#News "News")
  - [Information boards](#Information-boards "Information boards")
  - [Map](#Map "Map")
  - [Money](#Money "Exchange rates and financial information")
  - [Documentation](#Documentation "Manuals, cheat sheets and FAQs")
  - [Dictionaries and translators](#Dictionaries-and-translators "Dictionaries and translators")
  - [Generators](#Humour "Messages/texts/jokes/fortunes/names generators")
  - [Entertainment](#Entertainment "Chats, games and fun")
  - [Scripts](#Scripts "Scripts")
  - [Clients](#Clients "Clients")

## IP address

### inline
* `curl l2.io/ip`
* `curl echoip.de`
* `curl ifconfig.me`
* `curl ipecho.net/plain`
* `curl -L ident.me` #[API](http://api.ident.me)
* `curl -L canihazip.com/s`
* `curl -L tnx.nl/ip`
* `curl wgetip.com`
* `curl whatismyip.akamai.com`
* `curl ip.tyk.nu`
* `curl bot.whatismyipaddress.com`
* `curl curlmyip.net`

### new line
* `curl eth0.me`
* `curl ipaddr.site`
* `curl ifconfig.co`
* `curl ifconfig.pro`
* `curl curlmyip.net`
* `curl ipinfo.io/ip`
* `curl icanhazip.com`
* `curl checkip.amazonaws.com`

### DNS
* `dig @1.1.1.1 whoami.cloudflare ch txt +short` (IPv4)
* `dig @2606:4700:4700::1111 whoami.cloudflare ch txt -6 +short` (IPv6)
* `dig @ns1.google.com o-o.myaddr.l.google.com TXT -6 +short` (IPv6)
* `dig @ns1.google.com o-o.myaddr.l.google.com TXT -4 +short` (IPv4)
* `dig resolver.dnscrypt.info TXT +short`
* `curl https://dnsjson.com/resolver.dnscrypt.info/TXT.json`

### JSON only
* `curl httpbin.org/ip`
* `curl wtfismyip.com/json`

## Geolocation

* `curl ipinfo.io/8.8.8.8` or `curl ipinfo.io/8.8.8.8/loc`
* `curl ifconfig.co/country` or `curl ifconfig.co/city` or `curl ifconfig.co/country-iso` or `http ifconfig.co/json`

## Text Sharing

* `echo "Hello world!" | curl -F 'f:1=<-' ix.io`
* `echo "Hello world!" | curl -F file=@- 0x0.st`
* `echo "Hello world!" | curl -F 'clbin=<-' https://clbin.com`
* `echo "Hello world!" | nc termbin.com 9999`

## URL shortener

* `curl -s http://tinyurl.com/api-create.php?url=http://www.google.com`

## File Transfer

* `curl --upload-file <file> transfer.sh/<filename>`
* `curl --upload-file <file> filepush.co/upload/<filename>`

## Browser

* `ssh brow.sh`

## Tools

* `curl qrenco.de/STRING` or `echo STRING | curl -F-=\<- qrenco.de` — create QR-code for a string ([chubin/qrenco.de](https://github.com/chubin/qrenco.de))

## Monitoring

* `curl ping.gg`

## Weather

* `curl wttr.in` or `curl wttr.in/Berlin` - the right way to check the weather
* `finger oslo@graph.no`

## News

* `curl getnews.tech/world+cup` - fetch the latest news
* `gopher txtn.ws`
* `ssh redditbox.us` — Reddit in terminal (ssh + text browser)

## Information boards

* `curl http://frcl.de/gulasch` - Gulaschprogrammiernacht 2019 Fahrplan

## Map

* `telnet mapscii.me` - show a zoomable world map

## Money

* `curl rate.sx` - get cryptocurrencies exchange rates
* `curl moneroj.org` - get Monero exchange rate
* `curl cmc.rjldev.com` - get coinmarketcap top 100 cryptocurrencies
* `telnet ticker.bitcointicker.co 10080` — get BTC/USD exchange rate

## Documentation

* `curl cheat.sh` - UNIX/Linux commands cheat sheets using curl ([chubin/cheat.sh](https://github.com/chubin/cheat.sh))

## Dictionaries and translators

* `curl 'dict://dict.org/d:command line'`

## Generators

* `git commit -m $(curl -sk https://whatthecommit.com/index.txt)` — generate random commit message
* `curl -H 'Accept: text/plain' foaas.com/cool/:from` — fuck off as a service
* `curl pseudorandom.name` — generate a pseudo random (American?) name ([treyhunner/pseudorandom.name](https://github.com/treyhunner/pseudorandom.name))
* `curl -s https://uinames.com/api/?region=france\&amount=25 | jq '.[] | .name +" " + .surname'` — generate 25 random french names
* `curl https://icanhazdadjoke.com` — random jokes

## Entertainment and Games

* `nc towel.blinkenlights.nl 23` — watch StarWars in terminal
* `ssh chat.shazow.net` — chat over SSH ([shazow/ssh-chat](https://github.com/shazow/ssh-chat))
* `curl parrot.live` — display an animated party parrot ([hugomd/parrot.live](https://github.com/hugomd/parrot.live))
* `curl byemck.atulr.com` — display animated goodbye message for colleagues ([master-atul/byemck](https://github.com/master-atul/byemck))
* `nc rya.nc 1987` — disco in the console
* `curl node-web-console.glitch.me` — watch an emoji race ([source](https://glitch.com/edit/#!/node-web-console))

Telnet/SSH-based:

* `ssh sshtron.zachlatta.com` ~> snake game; play with AWSD keys
* `ssh netris.rocketnine.space` —  multiplayer tetris
* `ssh nethack@alt.org` —  a fun roguelike game
* `ssh play@anonymine-demo.oskog97.com -p 2222` — guess free minesweeper; Pass: play
* `ssh twenex@sdf.org` —  play various games including checkers
* `telnet freechess.org` — Chess Game
* `telnet milek7.gq` — games: Pong, Break out, Tetris
* `telnet aardmud.org` — MUD
* `telnet mud.darkerrealms.org 2000` — MUD

* `telnet telehack.com`

## Scripts

Useful scripts, that can be run with just one line of code, but where, still local still execution is necessary.

* `curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -`

## Clients

At least on of the clients, that you need to access these services, is installed in almost every UNIX/Linux system.

* [curl](https://github.com/curl/curl)
* [httpie](https://github.com/jakubroztocil/httpie) — modern command line HTTP client
* [wget](https://www.gnu.org/software/wget/)
* [wget2](https://gitlab.com/gnuwget/wget2)
