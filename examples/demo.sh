#!/usr/bin/env bash
set -e

LOCALE_NAME=en_DE
BUILD_DIR=./build

mkdir -p "$BUILD_DIR"

echo "[*] Building locale..."
localedef -i locale/en_DE -f UTF-8 "$BUILD_DIR/$LOCALE_NAME"

echo "[*] Testing locale output..."
LC_ALL="$BUILD_DIR/$LOCALE_NAME" locale
echo
LC_ALL="$BUILD_DIR/$LOCALE_NAME" date
echo
LC_ALL="$BUILD_DIR/$LOCALE_NAME" printf "%'.2f\n" 1234567.89

