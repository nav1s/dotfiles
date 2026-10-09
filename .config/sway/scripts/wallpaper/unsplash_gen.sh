#!/bin/sh
data_file='/home/aviv/.scripts/unsplash.data'
img_path='/home/aviv/Pictures/Wallpapers/Abstract/Unsplash'

url="https://api.unsplash.com/search/photos"
query="abstract"
HEADER="Authorization: Client-ID 1351e7003b0e869c6d7b221fe548c25216b16571ad28866446c06196ba1902d7"

# check if the data file doesn't exist or it's empty
if ! [ -s "$data_file" ]
then
	curl "$url?query=$query" -H $HEADER | jq -r '.results | .[] | .links | .download' > $data_file 
fi

# generate a new filename per our schema
num=0
while [ -e "$img_path/$num.jpg" ]; do
	num=$((num + 1))
done

img="$img_path/$num.jpg"

# choose a random image
download_url=$(shuf -n 1 "$data_file")
echo $download_url

# get our image
wget "$download_url" -O "$img"

# delete the image from the data file
sed -i "\#$download_url#d" "$data_file"

ln -f -s "$img" ~/bg.jpg
feh --no-fehbg --bg-fill ~/bg.jpg

