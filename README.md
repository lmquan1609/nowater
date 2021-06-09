# Nowater - Noah's wallpaper setter
Nowater is a command line interface tool that helps you change wallpaper easily. This script is based on [styli.sh](https://github.com/thevinter/styli.sh) but heavily modified. Nowater can search for specific wallpapers from [unsplash](https://unsplash.com/) or download a random image from the specified subreddits.

## Requirements
You need to install `feh`, `wget`, `jq` first before running this script.

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

## Usage
```
# To set a random 1920x1080 background
$ nowater

# To set a wallpaper based on a search term
$ nowater -s island
$ nowater -s "sea sunset"

# To set a wallpaper from a raw image link
$ nowater -l https://raw.githubusercontent.com/justanoobcoder/nowater/master/default.jpg

# To get a random wallpaper from one of the set subreddits
# (in $HOME/.cache/nowater/subreddits file)
$ nowater -l reddit

# To get a random wallpaper from a custom subreddit
$ nowater -r <custom_reddit>
$ nowater -r earthporn

# To use the builtin feh --bg options
$ nowater -b <option>
$ nowater -b bg-scale -r widescreen-wallpaper

# To add custom feh flags
$ nowater -c <flags>
$ nowater -c --no-xinerama -r widescreen-wallpaper

# To set wallpaper from an image file
$ nowater -f /path/to/image/file

# Choose a random background from a directory
$ nowater -d /path/to/dir

# To create a loop
$ nowater -t <cycle_time>
$ nowater -s vietnam -t 10m     # change wallpaper every 10 minutes
$ nowater -s vietnam -t 10m &   # append & sign to make it run in background
```

## Tips and tricks
- Your machine should have internet access at the first time you run this script to download default wallpaper (stored in `$HOME/.cache/nowater` directory).
- When your machine doesn't have internet access, nowater will use `$HOME/.cache/nowater/default.jpg` as wallpaper.
- You can change default wallpaper by replacing `$HOME/.cache/nowater/default.jpg` with the wallpaper image you want (must be named as default.jpg).
- Downloaded wallpaper is saved as `/tmp/nowater.jpg`.
- Beside 10m (10 minutes) you also can create a loop with 10s (10 seconds) but the cycle time should not be too short because the script needs time to download the images.
- If you put nowater command with a loop into a startup file, you must append a `&` sign to the command to make it run in background. For example: `nowater -t 5m &`
