#!/usr/bin/env bash
set -e
LIB="centered-trolley.a"
TAG="calm-delta-gentle-badger"
REPO="elioglow/libhalewarehouse"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL -o "$LIB" --retry 3 --connect-timeout 15 --max-time 180 "$URL"
g++ -o app -pthread -std=c++17 -O2 main.cpp "$LIB" && ./app
