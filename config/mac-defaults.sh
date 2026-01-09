#!/usr/bin/env bash

defaults write com.google.Chrome NSUserKeyEquivalents -dict \
    'New Tab' '^t' \
    'New Tab to the Right' '^g' \
    'Close Tab' '^w' \
    'Select Next Tab' '^m' \
    'Select Previous Tab' '^n' \
    'Reopen Closed Tab' '^$t' \
    'Duplicate Tab' '^u' \
    'Select All' '^a' \
    'Print…' '^p' \
    'Find…' '^f' \
    'Bookmark This Tab…' '^d' \
    'Open Location…' '^l' \


# Restart Chrome for change to take effect
# killall "Google Chrome" 2>/dev/null || true
# open -a "Google Chrome"
