# Nowater - Noah's wallpaper setter
Nowater is a command line interface tool that helps you set wallpaper or live wallpaper easily for X11. This script is based on [styli.sh](https://github.com/thevinter/styli.sh) but heavily modified. Nowater can search for specific wallpapers from [unsplash](https://unsplash.com/) or download a random image from the specified subreddits. It can also set a short video as a live wallpaper.

## Requirements
You need to install `feh`, `wget`, `jq`, `ffmpeg`, `sed` first before running this script.

## Install
```
git clone https://github.com/justanoobcoder/nowater.git
cd nowater
sudo make install
```

## Uninstall
To uninstall nowater, go to source code folder and run the following command:
```
sudo make uninstall
```
For Arch Linux, nowater can be install from [AUR](https://aur.archlinux.org/packages/nowater/).

## Usage
```
# To set a random 1920x1080 background
$ nowater

# To set a wallpaper based on a search term
$ nowater -s <keywords>
$ nowater -s island
$ nowater -s "sea sunset"

# To set a wallpaper from a raw image link
$ nowater -l <image url>
$ nowater -l https://raw.githubusercontent.com/justanoobcoder/nowater/master/default.jpg

# To get a random wallpaper from one of the set subreddits
# (in $HOME/.cache/nowater/subreddits file)
$ nowater -l reddit

# To get a random wallpaper from a custom subreddit
$ nowater -r <subreddit>
$ nowater -r earthporn

# To use the builtin feh --bg options
$ nowater -b <option>
$ nowater -b bg-scale -r wallpapers

# To add custom feh flags
$ nowater -c <flags>
$ nowater -c --no-xinerama -r widescreen-wallpaper

# To set wallpaper from an image file
$ nowater -f </path/to/image/file>
$ nowater -f ~/Pictures/Wallpapers/wallpaper.png

# Choose a random background from a directory
$ nowater -d </path/to/dir>
$ nowater -d ~/Pictures/Wallpapers/

# To get a live wallpaper from a short video
$ nowater -V </path/to/video/file>
$ nowater -V ~/Videos/video.mp4     # nowater only supports mp4 format

# To create a loop
$ nowater -t <cycle time>
$ nowater -s vietnam -t 10m         # change wallpaper every 10 minutes
```

## Tips and tricks
- There would be a short delay after you run nowater to set an online wallpaper because it takes time to download images.
- Live wallpaper feature only supports mp4 format videos, and it only repeats first 10 seconds of the video.
- Kill nowater process (if you're using nowater with loop or live wallpaper) before running it again. To kill nowater process, run this following command: `nowater -k`
- Your machine should have internet access at the first time you run this script to download default wallpaper (stored in `~/.cache/nowater` directory).
- When your machine doesn't have internet access, nowater will use `~/.cache/nowater/default.jpg` as wallpaper.
- You can change default wallpaper by replacing `~/.cache/nowater/default.jpg` with the wallpaper image you want (must be named as default.jpg).
- Downloaded wallpaper is saved as `/tmp/nowater.jpg`.
- Beside 10m (10 minutes) you also can create a loop with 10s (10 seconds) but the cycle time should not be too short because the script needs time to download the images.
