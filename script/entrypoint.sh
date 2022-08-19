#!/bin/bash
envsubst '${TOKEN},${CHAT_ID}' < ./blueset.telegram/config.yaml.tmplate > ./blueset.telegram/config.yaml
ehforwarderbot