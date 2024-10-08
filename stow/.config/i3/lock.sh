#!/usr/bin/env bash
# icon="$HOME/.config/i3/icon-default.png"
bgdef="$HOME/.config/i3/background-default.png"
icodef="$HOME/.config/i3/icon-default.png"
icogen="$HOME/.config/i3/icon-gen.png"
bggen="$HOME/.config/i3/background-gen.png"

if [[ ! -f $icogen ]]; then
    convert $icodef  -resize 190x190 $icogen
    convert $icogen \
        -gravity Center \
        \( -size 190x190 \
           xc:Black \
           -fill White \
           -draw 'circle 95 95 95 1' \
           -alpha Copy \
        \) -compose CopyOpacity -composite \
        -trim $icogen
    # convert screenshot.png lock.png -gravity center -composite screenshot.png
fi


# if [[ ! -f $bggen ]]; then
    #screenarea=$(xrandr --current | grep -oP '(?<=current )\d+ x \d+')
    #screenarea=${screenarea// /}
    #screens=( $(xrandr --current | grep -oP '\d+x\d+\+\d+\+\d+') )

    #convert -size $screenarea xc:black -quality 11 png24:"$bggen"

    #convert "$bggen" "$bgdef" -gravity Center -composite -quality 11 png24:"$bggen"
#fi

#i3lock -i $bggen


# $HOME/.config/i3/i3lockmore/i3lockmore --image-fill $bgdef
$HOME/.config/i3/i3lockmore/i3lockmore --image-fill $bgdef --lock-icon $icogen
