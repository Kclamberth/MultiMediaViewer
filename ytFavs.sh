#!/bin/bash

GREEN='\e[32m'
RESET='\e[0m'
FILE="ytSubs.txt"
total_videos=$(wc -l < "$FILE")

# Assuming a screen resolution of 1920x1080 and a grid of 2x4
screen_width=1920
screen_height=1080
window_width=$((screen_width / 4))
window_height=$((screen_height / 2))

for ((i=1; i<=total_videos; i++)); do 
    # Calculate position
    row=$(( 1 - (i - 1) / 4 ))
    col=$(( (i - 1) % 4 ))
    x=$(( col * window_width ))
    y=$(( row * window_height ))

    # Extract the URL
    url=$(sed -n "${i}p" "$FILE")

    # Extract the channel name
    channel_name=$(awk -F "@" 'NR=='"$i"' {print $2}' "$FILE" | awk -F "/" '{print $1}')

    # Print the current status
    echo -e "${GREEN}[$i/$total_videos]${RESET} Playing newest video for $channel_name"

    # Different handling for the first video
    if [ "$i" -eq 1 ]; then
        mpv --geometry=${window_width}x${window_height}+${x}+${y} "$url" &
    elif [[ "$i" -eq 2 ]]; then
        mpv --geometry=${window_width}x${window_height}+${x}+${y} --pause "$url" &
    else
        mpv --geometry=${window_width}x${window_height}+${x}+${y} --pause --start=300 "$url" &
    fi
done

wait
echo -e "Finished ${GREEN}[$total_videos/$total_videos]${RESET} videos."

