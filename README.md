# ruleeeer-efb-wechat

一个简单的使用`Telegram`收发微信消息的`docker`镜像，使用的是`efb(ehforwarderbot)`，
理论上只需提供机器人的`TOKEN`和`CHAT_ID`就可以直接运行

## 依赖
+ 可以连接`Telegram`的服务器，服务器在海外或者科学上网都可
+ 一个`Telegram`账号
+ ~~wechat可以登陆网页版（本条暂时可忽略，因为使用了uos的微信接口登陆）~~


## quick start
首先获取TG机器人的TOKEN和CHAT_ID，如果不知道如何获取，可以搜索efb收发微信消息，绝大多数文章都会告诉你如何获取

1、启动docker 
``` dockerfile
docker run \
 -d \
 --name efb-wechat \
 -e EFB_BOT_TOKEN='你的TOKEN' \
 -e EFB_CHAT_ID='你的CHAT_ID' \
 ruleeeer/efb-wechat
```

2、登陆
```dockerfile
docker logs -f efb-wechat
```
扫描二维码或者点击连接登陆即可
