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

### Inline

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
* `curl api.ipify.org`
* `curl ipv4bot.whatismyipaddress.com`
* `curl ipcalf.com`

### New line

* `curl ipaddy.net`
* `curl eth0.me`
* `curl ipaddr.site`
* `curl ifconfig.co`
* `curl ifconfig.pro`
* `curl curlmyip.net`
* `curl ipinfo.io/ip`
* `curl icanhazip.com`
* `curl checkip.amazonaws.com`
* `curl smart-ip.net/myip`
* `curl ip-api.com/line?fields=query`
* `curl ifconfig.io/ip`
* `curl -s ip.liquidweb.com`
* `curl ifconfig.es`
* `curl ipaddress.sh`

### DNS

* `dig @1.1.1.1 whoami.cloudflare ch txt +short` (IPv4)
* `dig @2606:4700:4700::1111 whoami.cloudflare ch txt -6 +short` (IPv6)
* `dig @ns1.google.com o-o.myaddr.l.google.com TXT -6 +short` (IPv6)
* `dig @ns1.google.com o-o.myaddr.l.google.com TXT -4 +short` (IPv4)
* `dig resolver.dnscrypt.info TXT +short`
* `curl https://dnsjson.com/resolver.dnscrypt.info/TXT.json`
* `curl -L https://edns.ip-api.com/json`

### JSON only

* `curl httpbin.org/ip`
* `curl wtfismyip.com/json`
* `curl -L iphorse.com/json`
* `curl geoplugin.net/json.gp`
* `curl https://ipapi.co/json`
* `curl -L jsonip.com`
* `curl gd.geobytes.com/GetCityDetails`
* `curl ip.jsontest.com`

## Geolocation

* `curl ipinfo.io/8.8.8.8` or `curl ipinfo.io/8.8.8.8/loc`
* `curl ip-api.com` or `curl ip-api.com/8.8.8.8`
* `curl ifconfig.co/country` or `curl ifconfig.co/city` or `curl ifconfig.co/country-iso` or `http ifconfig.co/json`
* `curl ifconfig.es/geo` or `curl ifconfig.es/json` or `curl ifconfig.es/country` or `curl ifconfig.es/code` or `curl ifconfig.es/city` or `curl ifconfig.es/latitude` or `curl ifconfig.es/longitude`

## Text Sharing

* `echo "Hello world!" | curl -F 'f:1=<-' ix.io`
* `echo "Hello world!" | curl -F file=@- 0x0.st`
* `echo "Hello world!" | curl -F 'clbin=<-' https://clbin.com`
* `echo "Hello world!" | nc termbin.com 9999`
* `echo "Hello world!" | curl -F 'sprunge=<-' sprunge.us`
* `echo "Hello world!" | curl -H "content-type: text/plain" -d @- https://textdb.dev/api/data/unique-id-for-my-text`

## URL shortener

* `curl -s tinyurl.com/api-create.php?url=<link>`
* `curl -F shorten=<link> https://ttm.sh`

## File Transfer

* `curl --upload-file <file> transfer.sh/<filename>`
* `curl --upload-file <file> filepush.co/upload/<filename>`
* `curl -F file=@<file> https://ttm.sh`

## Browser

*  :no_entry_sign: `ssh brow.sh`

## Tools

* `curl qrenco.de/STRING` or `echo STRING | curl -F-=\<- qrenco.de` — create QR-code for a string ([chubin/qrenco.de](https://github.com/chubin/qrenco.de))
* `curl "http://c.docverter.com/convert" -F from=html -F to=pdf -F "input_files[]=@your-file-name.html" -o "output-file-name.pdf"` - convert a document ([source](https://github.com/docverter/docverter))
* `curl -s "https://decapi.me/youtube/latest_video?user=NPR"` - title/URL of latest upload from indicated YouTube channel
* `curl -s "https://decapi.me/twitter/latest?name=NPR"` - last tweet from indicated account
* `curl -s "https://decapi.me/twitch/uptime?channel=IGN"` - check if indicated twitch channel is online
* `curl -s "https://httpbin.org/delay/4"` - HTTP request and response Service (e.g. send response after 4 seconds)
* `curl -s "https://urlecho.appspot.com/echo?body=Hello+World"` - HTTP response defined in the request parameters

## Monitoring

* `curl ping.gg`

## Weather

* `curl wttr.in` or `curl wttr.in/Berlin` — the right way to check the weather
* `finger oslo@graph.no`
* `nc rainmaker.wunderground.com 3000` (also works with telnet)
* `curl https://tgftp.nws.noaa.gov/data/observations/metar/stations/KAAO.TXT` - METAR from the specified ICAO

## News

* `curl getnews.tech/world+cup` — fetch the latest news
* `gopher://gopher.leveck.us:70` - news aggregator
* `gopher://gopherddit.com:70`  - reddit
* `ssh redditbox.us` — reddit in terminal (ssh + text browser)
* `gopher://hngopher.com:70` - hacker news
* :no_entry_sign: `curl wrk.ist` — fetch the latest remote jobs / gigs on the IT market

## Information boards

* :no_entry_sign: `curl http://frcl.de/gulasch` — Gulaschprogrammiernacht 2019 Fahrplan
* `gopher://gopherpedia.com:70` - wikipedia

## Map

* `telnet mapscii.me` — show a zoomable world map

## Money

* `curl rate.sx` — get cryptocurrencies exchange rates
* :no_entry_sign: `curl moneroj.org` — get Monero exchange rate
* :no_entry_sign: `curl cmc.rjldev.com` — get coinmarketcap top 100 cryptocurrencies
* `nc ticker.bitcointicker.co 10080` — get BTC/USD exchange rate (also works with telnet)
* `curl stonks.icu/amd/msft` get stock visualizer and tracker

## Documentation

* `curl cheat.sh` — UNIX/Linux commands cheat sheets using curl ([chubin/cheat.sh](https://github.com/chubin/cheat.sh))
* `gopher://telcodata.us:70` - NPA/NXX Lookup
* `gopher://gopher.floodgap.com/1/world` - all known gopher servers

## Dictionaries and translators

* `curl 'dict.org/d:command line'`

## Generators

* `git commit -m "$(curl -sk whatthecommit.com/index.txt)"` —  generate random commit message
* curl `"https://www.random.org/integers/?num=1&min=1&max=100&col=1&base=10&format=plain&rnd=new"` - generate random number
* `curl -H 'Accept: text/plain' foaas.com/cool/:from` — fuck off as a service
* `curl pseudorandom.name` — generate a pseudo random (American?) name ([treyhunner/pseudorandom.name](https://github.com/treyhunner/pseudorandom.name))
* :no_entry_sign: `curl -s https://uinames.com/api/?region=france\&amount=25 | jq '.[] | .name +" " + .surname'` — generate 25 random french names
* `curl https://icanhazdadjoke.com` — random jokes
* `curl givemeguid.com` - guid
* `nc towel.blinkenlights.nl 666` - IT excuses (also works with telnet)

## Entertainment and Games

* `curl https://asciitv.fr` — watch Star Wars in terminal via curl ([source](https://github.com/martinraison/ascii-tv))
* `nc towel.blinkenlights.nl 23` — watch Star Wars in terminal via netcat (also works with telnet)
* `ssh chat.shazow.net` — chat over SSH ([shazow/ssh-chat](https://github.com/shazow/ssh-chat))
* `ssh chat@ascii.town` — SSH chat client ([source](https://git.causal.agency/catgirl))
* `curl parrot.live` — display an animated party parrot ([hugomd/parrot.live](https://github.com/hugomd/parrot.live))
* `curl byemck.atulr.com` — display animated goodbye message for colleagues ([master-atul/byemck](https://github.com/master-atul/byemck))
* `nc rya.nc 1987` — get Rick Rolled (also works with telnet)
* `curl node-web-console.glitch.me` — watch an emoji race ([source](https://glitch.com/edit/#!/node-web-console))
* `curl ascii.live/forrest` - run Forrest, run!
* `curl ascii.live/nyan` - watch Nyan Cat
* `curl https://poptart.spinda.net` — fullscreen colorized Nyan Cat
* `gopher://fld.gp:70` - gopher resources / news / weather / entertainment
* `gopher://mozz.us:70` - games, drink recipes, and other
* `gopher://port70.net/1board/b` - 4chan
* `ssh torus@ascii.town` - collaborative ASCII art project ([source](https://git.causal.agency/torus))
* `telnet 1984.ws 23` — BBS (BBS list [here](https://www.telnetbbsguide.com/bbs/))

Telnet/SSH-based games:

* `ssh sshtron.zachlatta.com` ~> snake game; play with AWSD keys
* `ssh netris.rocketnine.space` —  multiplayer tetris
* `ssh play@ascii.town` —  2048 ([source](https://git.causal.agency/play))
* `ssh gameroom@bitreich.org` - 11 arcade games
* `ssh play@anonymine-demo.oskog97.com -p 2222` — guess free minesweeper; Pass: play
* `ssh twenex@sdf.org` —  play various games including checkers
* `ssh intricacy@sshgames.thegonz.net` - Competitive puzzle; password: intricacy
* `ssh simulchess@sshgames.thegonz.net` - Multiplayer Chess; password: simulchess
* `ssh pacman:pacman@antimirov.net` - Pacman; password: pacman
* `ssh lagrogue@sshgames.thegonz.net` - Roguelike; password: lag
* `ssh ckhet@sshgames.thegonz.net` - Khet; password: ckhet
* `ssh slashem@slashem.me` - nethack and others
* `ssh rodney@rlgallery.org` - rogue; password: yendor
* `ssh pong.brk.st` - singleplayer pong
* `ssh tty.sdf.org` - requires you to [make an account](https://sdf.org) first
* `nc aardmud.org 23` — MUD (MUD list [here](http://www.mudconnect.com/cgi-bin/search.cgi?mode=tmc_biglist), also works with telnet)
* `nc freechess.org 23` — Chess Game (also works with telnet)
* `nc igs.joyjoy.net 6969` - play/watch the game of Go (also works with telnet))
* `nc fibs.com 4321` - multiplayer backgammon (also works with telnet)
* `telnet dungeon.name 20028` - infinite cave adventure
* `telnet milek7.gq` — games: Pong, Break out, Tetris
* `telnet mtrek.com 1701` — Star Trek
* `telnet telehack.com`


## Scripts

Useful scripts, that can be run with just one line of code, but where, still local execution is necessary.

* `curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -`

## Clients

At least one of these clients, that you need to access these services, is installed on almost every UNIX/Linux system.

* [aria2](https://aria2.github.io/)
* [bitsadmin](https://docs.microsoft.com/windows/win32/bits/)
* [curl](https://curl.haxx.se/)
* [httpie](https://httpie.org/)
* [httrack](https://www.httrack.com/)
* [powershell](https://microsoft.com/powershell/)
* [rclone](https://rclone.org/)
* [wget](https://www.gnu.org/software/wget/)
* [wget2](https://gitlab.com/gnuwget/wget2)
