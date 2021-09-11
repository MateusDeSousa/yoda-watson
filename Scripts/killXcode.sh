#!/bin/sh

if pgrep "Xcode" >/dev/null; then
    KillAll Xcode
fi