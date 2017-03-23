# awesome-console-services
A curated list of awesome console services (reachable via HTTP, HTTPS and other network protocols)


## IP address

* `curl canihazip.com/s`
* `curl ipinfo.io/ip`
* `curl icanhazip.com`
* `curl curlmyip.net`
* `curl ipecho.net/plain`
* `curl ifcfg.me`
* `curl ip-addr.es`
* `dig +short myip.opendns.com @resolver1.opendns.com`

## IP-based geolocation

* `curl ipinfo.io/8.8.8.8` or `curl ipinfo.io/8.8.8.8/loc`
* `curl freegeoip.net/csv/8.8.8.8` or `freegeoip.net/xml/4.2.2.2` or `freegeoip.net/json/github.com`

## Text Sharing (like pastebin)

* `ix.io`
* `sprunge.us`
* `ptpb.pw`

## File Transfer

* `curl --upload-file <file> transfer.sh/<filename>`

## Weather 

* `curl wttr.in or curl wttr.in/Berlin`
* `finger oslo@graph.no`

## Dictionaries and translators

* `curl 'dict://dict.org/d:command line'`

## Messages/texts/fortunes generators

* `git commit -m $(curl -s https://whatthecommit.com/index.txt)`
* `curl -H 'Accept: text/plain' foaas.com/cool/:from`
