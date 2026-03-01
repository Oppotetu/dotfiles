#!/usr/bin/env bash

defaults write com.google.Chrome NSUserKeyEquivalents -dict \
    'New Tab' '^t' \
    'New Tab to the Right' '^g' \
    'Close Tab' '^w' \
    'Select Next Tab' '$^k' \
    'Select Previous Tab' '$^j' \
    'Reopen Closed Tab' '^b' \
    'Select All' '^a' \
    'Print…' '^p' \
    'Find…' '^f' \
    'Bookmark This Tab…' '^d' \
    'Open Location…' '^l' \
    'Back' '$^h' \
    'Forward' '$^l'

killall "Google Chrome"
sleep 3
open -a "Google Chrome"


    # 'Duplicate Tab' '^u' \

