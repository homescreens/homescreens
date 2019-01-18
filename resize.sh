#!/bin/bash
# Resizes images and echoes appropriate HTML 
# Requires ffmpeg, imagemagick
# Based off https://github.com/mavieth/image-resizer

SIZE="500kb"
SCALE="40%"
MAX_WIDTH=700

for image in `ls -r *.{gif,jpeg,jpg,JPG,png,webm} -R 2>/dev/null`; do

	# File extension
	ending="${image##*.}"

	# Save original copy in full directory
	cp $image full/$image

	# Create a screencap of gif or webm to use as thumbnail later
	if [ $ending == "gif" ] || [ $ending == "webm" ];
	then
		screencap="${image%.*}.png"
		ffmpeg -loglevel quiet -i $image -y $screencap
		rm $image
		image=$screencap
	fi

	# Convert
	convert $image -define jpeg:extent=$SIZE -scale $SCALE -resize $MAX_WIDTH -auto-orient $image

	# Move converted image to thumbnail directory
	mv $image thumb/

	# Correct file extension
	full="${image%.*}.$ending"

	# Display message
	echo "<div class=\"item\">"
	if [ $ending == "gif" ] || [ $ending == "webm" ];
	then
		# Video icon
		echo -e "\t<span class=\"jammin\" data-jam=\"video-camera-vintage-f\" data-fill=\"#a2b5d2\"></span>"
	fi
	echo -e "\t<a href=\"assets/full/$full\" target=\"_blank\"><img class=\"lazy\" data-src=\"assets/thumb/$image\" alt=\"$full\"></a>"
	echo "</div>"

done
