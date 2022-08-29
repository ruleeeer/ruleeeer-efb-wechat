#!/bin/bash
envsubst '${EFB_BOT_TOKEN},${EFB_CHAT_ID}' < ./blueset.telegram/config.yaml.tmplate > ./blueset.telegram/config.yaml
ehforwarderbot