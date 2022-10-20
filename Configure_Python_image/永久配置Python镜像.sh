#!/bin/env bash

sudo tee ~/.pip/pip.conf <<'EOF'
[global]
index-url = https://mirrors.huaweicloud.com/repository/pypi/simple
trusted-host = mirrors.huaweicloud.com
timeout = 120
EOF
