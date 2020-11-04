#!/bin/bash

LRED="\033[1;31m"   # Light Red
LGREEN="\033[1;32m" # Light Green
NC='\033[0m'        # No Color

text_success="(${LGREEN}Success${NC})"
text_failed="(${LRED}Failed${NC}) "
final_result=${text_success}
final_result_code=0


# test by checking http status code
# if the service return 200, its a green light
test_curl() {
    expected_http_status=$1
    service_url=$2

    actual_status=$(curl -s -m 5 --retry 3 -o /dev/null -w "%{http_code}" $service_url)

    if [ "${actual_status}" == "${expected_http_status}" ]; then
        result=${text_success}
    else
        result=${text_failed}
        final_result=${text_failed}
        final_result_code=127
    fi

    echo -e "${result} curl ${service_url} ${@:3}"
}

# test by checking response text
# if part of the content exist, its a green light
test_finger() {
    should_see_text=$1
    service_url=$2

    response=$(finger $2)

    if [[ $response == *"${should_see_text}"* ]]; then
        result=${text_success}
    else
        result=${text_failed}
        final_result=${text_failed}
        final_result_code=127
    fi

    echo -e "${result} finger ${service_url} ${@:3}"
}

# test by checking program exit code
# if the status is 0, its a green light
test_nc() {
    $(nc -z -w 5 -q 1 $@)

    if [ "$?" == "0" ]; then
        result=${text_success}
    else
        result=${text_failed}
        final_result=${text_failed}
        final_result_code=127
    fi

    echo -e "${result} nc ${@}"
}

# test by checking the host is reachable and the port is open
test_telnet() {
    $(nc -z -w 5 -q 1 $@)

    if [ "$?" == "0" ]; then
        result=${text_success}
    else
        result=${text_failed}
        final_result=${text_failed}
        final_result_code=127
    fi

    echo -e "${result} telnet ${@}"
}

# test by checking the host is reachable and the port is open
test_ssh() {
    $(nc -z -w 5 -q 1 $@)

    if [ "$?" == "0" ]; then
        result=${text_success}
    else
        result=${text_failed}
        final_result=${text_failed}
        final_result_code=127
    fi

    echo -e "${result} telnet ${@}"
}

echo -e "\n\n==Start testing all services==\n"

echo -e "## IP address"

echo -e "### Inline"
test_curl 200 l2.io/ip
test_curl 200 https://echoip.de
test_curl 200 ifconfig.me
test_curl 200 ipecho.net/plain
test_curl 200 https://canihazip.com/s
test_curl 200 https://tnx.nl/ip
test_curl 200 wgetip.com
test_curl 200 whatismyip.akamai.com
test_curl 200 ip.tyk.nu
test_curl 200 bot.whatismyipaddress.com
test_curl 200 curlmyip.net

echo -e "### new line"
test_curl 200 ipaddy.net
test_curl 200 eth0.me
test_curl 200 ipaddr.site
test_curl 200 ifconfig.co
test_curl 200 ifconfig.pro
test_curl 200 curlmyip.net
test_curl 200 ipinfo.io/ip
test_curl 200 icanhazip.com
test_curl 200 checkip.amazonaws.com
test_curl 200 ifconfig.es

echo -e "### DNS"
# dont know how to test dig, exit code always return 0
## * `dig @1.1.1.1 whoami.cloudflare ch txt +short` (IPv4)
## * `dig @2606:4700:4700::1111 whoami.cloudflare ch txt -6 +short` (IPv6)
## * `dig @ns1.google.com o-o.myaddr.l.google.com TXT -6 +short` (IPv6)
## * `dig @ns1.google.com o-o.myaddr.l.google.com TXT -4 +short` (IPv4)
## * `dig resolver.dnscrypt.info TXT +short`
test_curl 200 https://dnsjson.com/resolver.dnscrypt.info/TXT.json


echo -e "### JSON only"
test_curl 200 httpbin.org/ip
test_curl 200 wtfismyip.com/json

echo -e "### Geolocation"
test_curl 200 ipinfo.io/8.8.8.8
test_curl 200 ipinfo.io/8.8.8.8/loc
test_curl 200 ifconfig.co/country
test_curl 200 ifconfig.co/city
test_curl 200 ifconfig.co/country-iso
test_curl 200 ifconfig.co/json
test_curl 200 ifconfig.es/country
test_curl 200 ifconfig.es/code
test_curl 200 ifconfig.es/city
test_curl 200 ifconfig.es/latitude
test_curl 200 ifconfig.es/longitude
test_curl 200 ifconfig.es/geo
test_curl 200 ifconfig.es/json

echo -e "## Text Sharing"
## * `echo "Hello world!" | curl -F 'f:1=<-' ix.io`
## * `echo "Hello world!" | curl -F file=@- 0x0.st`
## * `echo "Hello world!" | curl -F 'clbin=<-' https://clbin.com`
## * `echo "Hello world!" | nc termbin.com 9999`

echo -e "## URL shortener"
test_curl 200 http://tinyurl.com/api-create.php?url=http://www.google.com

echo -e "## File Transfer"
# http status return 200 but still failed, ???
# test_curl 200 https://transfer.sh/test.txt --upload-file /tmp/test.txt # failed
# test_curl 200 filepush.co/upload/test.txt --upload-file /tmp/test.txt # failed

echo -e "## Browser"
# test_ssh brow.sh 22 # dead

echo -e "## Tools"
test_curl 200 qrenco.de/STRING

echo -e "## Monitoring"
test_curl 200 ping.gg

echo -e "## Weather"
test_curl 200 wttr.in
test_curl 200 wttr.in/semarang
# alpine doesnt have finger
# test_finger "Meteogram for norway" oslo@graph.no

echo -e "## News"
test_curl 200 snf-878293.vm.okeanos.grnet.gr
test_curl 200 getnews.tech/world+cup
# alpine doesnt have gopher
# * `gopher txtn.ws`
test_ssh redditbox.us 22

echo -e "## Information boards"
# test_curl 200 frcl.de/gulasch # dead

echo -e "## Map"
test_telnet mapscii.me 23

echo -e "## Money"
test_curl 200 rate.sx
# test_curl 200 moneroj.org # dead
test_curl 200 cmc.rjldev.com
test_telnet ticker.bitcointicker.co 10080

echo -e "## Documentation"
test_curl 200 cheat.sh

echo -e "## Dictionaries and translators"
# dict:// doesnt have http status
# test_curl 220 'dict://dict.org/d:command line'

echo -e "## Generators"
test_curl 200 whatthecommit.com/index.txt
test_curl 200 https://foaas.com/cool/lakuapik -H 'Accept: text/plain'
test_curl 200 pseudorandom.name
# test_curl 200 https://uinames.com/api/?region=france\&amount=25 # 403 forbidden
test_curl 200 https://icanhazdadjoke.com

echo -e "## Entertainment and Games"
test_nc towel.blinkenlights.nl 23
test_ssh chat.shazow.net 22
# test_curl 200 parrot.live -m 20 # response time to long
# test_curl 200 byemck.atulr.com -m 20 # response time to long
test_nc rya.nc 1987 # nc rya.nc 1987
# test_curl 200 node-web-console.glitch.me -m 20 # response time to long

# Telnet/SSH-based:
test_ssh sshtron.zachlatta.com 22
test_ssh netris.rocketnine.space 22
# test_ssh nethack@alt.org 22 # host not found
# test_ssh play@anonymine-demo.oskog97.com 2222 # host not found
# test_ssh twenex@sdf.org 22 # host not found
test_telnet freechess.org 23
test_telnet milek7.gq 23
test_telnet aardmud.org 23
test_telnet mud.darkerrealms.org 2000
test_telnet telehack.com 23

# echo -e "## Scripts"
# curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -`

echo -e "\nFinal test result: ${final_result}"
echo -e "\n==END==\n\n"

exit ${final_result_code}
