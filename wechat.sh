#!/bin/bash
##################
# author: Sam    #
# version: 1.0   #
##################  
# Profile:       #
##################
# corpid:$1      #
# corpsecret:$2  #
# agentid:$3     #
# userid:$4      #
# message:$5     #
#################
corpid=$1
corpsecret=$2
agentid=$3
TOKEN=$( curl -s "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$1&corpsecret=$2" | cut -d "\"" -f 10 ) 
#echo $TOKEN
newurl="https://qyapi.weixin.qq.com/cgi-bin/message/send?access_token=$TOKEN"

body="{\"touser\":\""$4"\",\"msgtype\":\"text\",\"agentid\":"$3",\"text\":{\"content\":\""$5"\"},\"safe\":0}"
#echo $body

curl -H "Content-Type: application/json" -X POST  -d "$body" $newurl
