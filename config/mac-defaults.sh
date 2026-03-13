#!/usr/bin/env bash

defaults write com.google.Chrome NSUserKeyEquivalents -dict \
    'New Tab' '^t' \
    'New Tab to the Right' '^g' \
    'Close Tab' '^w' \
    'Select Next Tab' '^m' \
    'Select Previous Tab' '^n' \
    'Reopen Closed Tab' '^b' \
    'Select All' '^a' \
    'Print…' '^p' \
    'Find…' '^f' \
    'Bookmark This Tab…' '^d' \
    'Open Location…' '^l' \
    'Search Tabs…' '$^s' \
    'Extensions' '$^e' \
    'Downloads' '^j' \
    'Show Full History' '^h' \
    'Back' '~,' \
    'Forward' '~.' \
    'Developer Tools' '$^i' \
    'JavaScript Console' '$^j'

killall "Google Chrome"
sleep 3
open -a "Google Chrome"


    # 'Duplicate Tab' '^u' \

