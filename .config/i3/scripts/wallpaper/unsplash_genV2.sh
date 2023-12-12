#!/bin/sh
img_path='/home/aviv/Pictures/Wallpapers/Abstract/Unsplash'

url="https://source.unsplash.com/1920x1080/?"
query="abstract"

# generate a new filename per our schema
num=0
while [ -e "$img_path/$num.jpg" ]; do
	num=$((num + 1))
done

img="$img_path/$num.jpg"

# choose a random image
download_url="$url$query"
echo $download_url

# get our image
wget "$download_url" -O "$img"

ln -f -s "$img" ~/bg.jpg
feh --bg-fill ~/bg.jpg

