# Nowater - Noah's wallpaper setter
Nowater is a command line interface tool that helps you set wallpaper or live wallpaper easily for X11. This script is based on [styli.sh](https://github.com/thevinter/styli.sh) and [dynamic-wallpaper](https://github.com/adi1090x/dynamic-wallpaper) but heavily modified. Nowater can search for specific wallpapers from [unsplash](https://unsplash.com/) or download a random image from the specified subreddits. It can also set a short video as a live wallpaper.

## Requirements
You need to install `feh`, `wget`, `jq`, `ffmpeg`, `sed` first before running this script.

## Install
For Arch Linux, nowater can be installed from [AUR](https://aur.archlinux.org/packages/nowater/).

For other distros, nowater can be installed using `make`:
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
$ nowater -l https://www.ixpap.com/images/2021/03/tanjiro-wallpaper-ixpap-6.jpg

# To get a random wallpaper from one of the set subreddits
# (in ~/.cache/nowater/subreddits file)
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
$ nowater -V ~/Videos/video.mp4     # for now, nowater only supports mp4 format

# To create a loop
$ nowater -t <cycle time>
$ nowater -s vietnam -t 10m         # change wallpaper every 10 minutes
$ nowater -d ~/Pictures/Wallpapers/ -t 30s      # change wallpaper every 30 seconds

# To see more options
$ nowater -h
```
Set wallpapers according to current time: `nowater -T`
![gif](https://raw.githubusercontent.com/justanoobcoder/files/master/nowater/nowater.gif)

## Attention
- If you run nowater with loop (-t, -T option) or live wallpaper (-V option), you must kill nowater process before running it again. Nowater can be killed by running `nowater -k` or `nowater --kill`.
- Live wallpaper is cool but your CPU may not like it, so I don't recommend to use it.

## Tips and tricks
- There would be a short delay after you run nowater to set an online wallpaper because it takes time to download images.
- Live wallpaper feature only supports mp4 format videos.
- When your machine doesn't have internet access, nowater will use `/usr/local/share/nowater/images/default-wallpaper.png` as default wallpaper (if you want to set an online wallpaper).
- Downloaded wallpaper is saved as `/tmp/nowater.jpg`.
- To set a loop, you need to pass `-t Nm` or `-t Ns`, N is a positive number, m for minutes, s for seconds. Loop feature only works with -r, -d and -s option.
