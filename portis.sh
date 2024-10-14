#!/bin/bash

# Array of Markdown filenames and their corresponding class names
declare -A files=(
    ["logo.md"]="one"
    ["recursos.md"]="two"
    ["sponsors.md"]="three"
    ["extras.md"]="four"
    ["paquetes.md"]="five"
    ["condiciones.md"]="six"
    ["acerca.md"]="seven"
    ["agradecimientos.md"]="eight"
    ["news.md"]="nine"
)

# Start creating the index.html file
echo "<!DOCTYPE html>
<html>
<head>
 <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
 <title>villalba.is</title>
 <link rel=\"stylesheet\" href=\"./styles/lit.css\" />
 <scrip src=\"./js/rss-feed.js\" defer></scrip>
</head>
<body>
<div class=\"wrapper\">" > ./index.html

# Loop through the keys of the associative array
for filename in "${!files[@]}"
do
    class_name=${files[$filename]}
    echo "<div class=\"$class_name\">" >> ./index.html
    
    # Construct the full path to the Markdown file
    full_path="./content/$filename"
    
    if [ -e "$full_path" ]; then
        pandoc "$full_path" >> ./index.html
            echo "Processing file: $full_path"
    else
        echo "File $full_path does not exist." >> ./index.html
    fi
    
    echo "</div>" >> ./index.html
done

# Close the HTML tags
echo "</div></body>
</html>" >> ./index.html

