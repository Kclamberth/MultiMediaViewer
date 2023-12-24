# MultiMediaViewer
Leverage MPV and some clever screen manipulation to open multiple sources of media at once, and evenly divide the screen into 8 portions for them to fit in. 


Instead of opening a full browser and having multiple tabs open, I am using this as an alternative lighter weight setup. 
ytSubs.txt is a file in the same directory that contains a list of 8 of my most frequented youtube channels. When this
script runs, it opens the newest video in each channel and gives it 1/8 of a screen (1920x1080). 

This acts as a sort of all in one youtube center for me, and it's nice because I dont have to go to those channels,
and check if they've uploaded any new videos.

Feel free to use this script or modify it however you want.

NOTE
--------------------------------------------------------------------------------------------------------------------------------------------------------------
Ensure you change the FILE name in the script to match your file, and keep it in the same directory.

Ensure your screen resolution is 1920x1080p or change the width/height in the script to evenly divide the screen.

Currently skips 5 minutes into the source and pauses (to skip sponsors, ads, etc) and act as a thumbnail for the video.

TODO
--------------------------------------------------------------------------------------------------------------------------------------------------------------
Currently generates a 2x4 grid based on 8 sources at once, I plan on adding the option to input source number in the future.

