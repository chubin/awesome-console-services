# awesome-console-services
A curated list of awesome console services (reachable via HTTP, HTTPS and other network protocols)


## IP address

* `curl https://canihazip.com/s`
* `curl ipinfo.io/ip`
* `curl icanhazip.com`
* `curl curlmyip.net`
* `curl ipecho.net/plain`
* `curl ifcfg.me`
* `curl ip-addr.es`
* `dig +short myip.opendns.com @resolver1.opendns.com`
* `curl ident.me` (see http://api.ident.me/ for the full API reference)
* `curl ipaddr.site`

## IP-based geolocation

* `curl ipinfo.io/8.8.8.8` or `curl ipinfo.io/8.8.8.8/loc`
* `curl freegeoip.net/csv/8.8.8.8` or `freegeoip.net/xml/4.2.2.2` or `freegeoip.net/json/github.com`

## Text Sharing (like pastebin)

* `ix.io`
* `sprunge.us`
* `ptpb.pw`
* `0x0.st`
* `clbin.com`
* `echo "Hello world!" | nc termbin.com 9999`

## URL shortener

* `curl -s http://tinyurl.com/api-create.php?url=http://www.google.com`
* `curl -F c=@- https://ptpb.pw/u <<< http://www.google.com`
* `curl -X POST --data "http://google.com" http://iret.ml/shorten`

## File Transfer

* `curl --upload-file <file> transfer.sh/<filename>`

## Tools

* `curl qrenco.de/STRING` or `echo STRING | curl -F-=\<- qrenco.de` — create QR-code for a string ([chubin/qrenco.de](https://github.com/chubin/qrenco.de))

## Weather 

* `curl wttr.in` or `curl wttr.in/Berlin` - the right way to check the weather 
* `finger oslo@graph.no`

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

## Clients

At least on of the clients, that you need to access these services, is installed in almost every UNIX/Linux system.

* [curl/curl](https://github.com/curl/curl)
* [httpie](https://github.com/jakubroztocil/httpie) — modern command line HTTP client
* wget 
