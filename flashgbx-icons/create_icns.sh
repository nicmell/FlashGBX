#!/bin/sh -x

input_file=icon.png
output_path=output.iconset

# the convert command comes from imagemagick
for size in 16 32 64 128 256; do
  half="$(($size / 2))"
  convert $input_file -resize x$size $output_path/icon_${size}x${size}.png
  convert $input_file -resize x$size $output_path/icon_${half}x${half}@2x.png
done

iconutil -c icns $output_path