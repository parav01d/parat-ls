#!/bin/bash

sounds=()
sounds[0]='~/Work/paranoid/push_sound/pushit.wav'
sounds[1]='~/Work/paranoid/push_sound/pushpush.wav'
sounds[2]='~/Work/paranoid/push_sound/pushedagain.wav'
sounds[3]='~/Work/paranoid/push_sound/pushitpushit.wav'
sounds[4]='~/Work/paranoid/push_sound/mypush.wav'
sounds[5]='~/Work/paranoid/push_sound/pushpull.wav'

eval "afplay ${sounds[$RANDOM % 6]}"
