#!bin/bash

count=1;
for img in *.jpg *.JPG *.png *.PNG *.jpeg
do
new=image-$count.${img##*.}

mv "$img" "$new" 2> /dev/null

if [ $? -eq 0 ];
    then

    echo "Rename $img to $new"
    let count++
    
fi


done
