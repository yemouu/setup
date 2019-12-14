#!/usr/bin/env bash
# this is a sample config for scr
# scr doesn't define any default variables so all variables will be listed here
# shellcheck disable=SC2034

## General ##
# defines were screenshots and recordings will be stored 
scr_basedir="${HOME}/tmp/scr"
scr_pic_dir="${scr_basedir}/pic"
scr_rec_dir="${scr_basedir}/rec"
scr_aud_dir="${scr_basedir}/aud"

# Aud Settings #
# audio devices to use for audio recordings
# can be found by executing `pactl list sinks | grep "Monitor Source"` for the sink
# and `pactl list sources | grep Name:` for the source 
aud_sink="alsa_output.pci-0000_00_1f.3.analog-stereo.monitor"
aud_source="alsa_input.usb-BLUE_MICROPHONE_Blue_Snowball_201306-00.mono-fallback"
# the audio device(s) to be used when recording with microphone
aud_mic_args="-f pulse -i ${aud_source}"
# the audio device(s) to be used when recording with desktop audio
aud_desktop_audio_args="-f pulse -i ${aud_sink}"
# this varaible is used when recording with both the microphone and desktop audio
# if more than one device is listed in rec_mic_args or rec_audio_args the contents of this varible
# will be needed for both devices to be recorded. it may need to be edited to fit the number of devices
aud_multi_audio_args="-filter_complex amix=inputs=2"
# set the mimetype for audio files, a quick internet search should help you find
# the one you want. i use wav. for mp3, use audio/mpeg
aud_mimetype="audio/x-wav"
# how you want the file to be named
# the file will be moved to the $scr_aud_dir
# the file extension should match your mimetype
aud_filename="$(date +%y-%m-%d-%H_%M_%S).wav"

# Pic Settings #
# set the mimetype for screenshots, a quick internet search should help you find
# the one you want. i use png. for jpeg, use image/jpeg
pic_mimetype="image/png"
# how you want the file to be named
# the file will be moved to the $scr_pic_dir
# the file extension should match your mimetype
pic_filename="$(date +%y-%m-%d-%H_%M_%S).png"

# Rec Settings #
# set the mimetype for screenshots, a quick internet search should help you find
# the one you want. i use mp4.
rec_mimetype="video/mp4"
# how you want the file to be named
# the file will be moved to the $scr_rec_dir
# the file extension should match your mimetype
rec_filename="$(date +%y-%m-%d-%H_%M_%S).mp4"

# scr will pick between x11 and wayland depending on the XDG_SESSION_TYPE environment variable

## X11 ##
# Screenshots #
# ImageMagick is used for screenshots on x11
# a list of possible options can be found by executing `man import`
X11_pic_args=""

# Screen Recording #
# ffmpeg is used for screen recordings on x11
# `-f x11grab` is required to grab the screen while `-r 60` is to capture at 60fps
X11_rec_screengrab_args="-f x11grab -r 60"
# the audio device(s) to be used when recording with microphone
X11_rec_mic_args="$aud_mic_args"
# the audio device(s) to be used when recording with desktop audio
X11_rec_desktop_audio_args="$aud_desktop_audio_args"
# this varaible is used when recording with both the microphone and desktop audio
# if more than one device is listed in rec_mic_args or rec_audio_args the contents of this varible
# will be needed for both devices to be recorded. it may need to be edited to fit the number of devices
X11_rec_multi_audio_args="$aud_multi_audio_args"
# i find these options to make cpu usage while recording more resonable
X11_rec_args="-c:v libx264 -crf 20 -preset veryfast -pix_fmt yuv420p"

# Clipboard #
# xclip is used for copying data
# in the script, -i and -t are already used
X11_clipboard_args="-selection clipboard"

# Selection #
# slop is used to create selections
# in the script, -f is already used
X11_selection_args="-q"


## Wayland ##
# Screenshots #
# grim is used for screenshots on wayland
wl_pic_args="-t png"

# Screenrecording #
# wf-recorder is used for screen recordings on wayland

# Clipboard #
# wl-clipboard is used for copying data
# in the script, -t is already used
wl_clipboard_args=""

# Selection #
# slurp is used to create selections
# in the script, -f is already used
wl_selection_args=""
