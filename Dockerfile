FROM ubuntu:22.04
MAINTAINER ruleeeer<me@ruleeeer.cn>
WORKDIR /root/.ehforwarderbot/profiles/default

# copy配置文件和模板
COPY config/config.yaml ./
COPY config/blueset.telegram/config.yaml.tmplate ./blueset.telegram/
COPY script/entrypoint.sh /root/

# 安装依赖和模板替换
RUN apt update \
    && apt install git gettext-base python3 python3-pip python3-setuptools python3-yaml ffmpeg libmagic1 libcairo2 -y \
    && python3 -m pip install --upgrade pip \
    && python3 -m pip install --upgrade Pillow \
    && pip3 install ehforwarderbot \
    && pip3 install efb-telegram-master \
    && pip3 install git+https://github.com/ehForwarderBot/efb-wechat-slave \
    && pip3 install --upgrade Pillow

# 启动efb
ENTRYPOINT ["sh" , "/root/entrypoint.sh"]