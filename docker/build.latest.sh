#!/bin/bash

unset KUBECONFIG

cd .. && docker build -f docker/Dockerfile.latest \
             -t registry.nextv.show/baizeai/coze-on-wechat .

docker tag registry.nextv.show/baizeai/coze-on-wechat registry.nextv.show/baizeai/coze-on-wechat:$(date +%y%m%d)