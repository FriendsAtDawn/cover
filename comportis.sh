#!/bin/bash

# Array of Markdown filenames and their corresponding class names
declare -A files=(
    ["logo.md"]="logo"
    ["eth.md"]="eth"
    ["recursos.md"]="recursos"
    ["blog.md"]="blog"
    ["otros-recursos.md"]="otros"
    ["amigos.md"]="amigos"
    ["extras.md"]="extras"
    ["paquetes.md"]="paquetes"
    ["condiciones.md"]="condiciones"
    ["agradecimientos.md"]="agradecimientos"
    ["cpc.md"]="cpc"
    ["ruc.md"]="ruc"
    ["submenu.md"]="submenu"
)

# Start creating the index.html file
echo "<!DOCTYPE html>
<html>
<head>
 <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
 <title>villalba.is</title>
 <link rel=\"stylesheet\" href=\"./styles/lit.css\" />
 <script src=\"./js/rss-feed.js\" defer></script>
</head>
<body>
<div class=\"wrapper\">" > ./index.html

# Loop through the keys of the associative array
for filename in "${!files[@]}"
do
    class_name=${files[$filename]}
    full_path="./content/$filename"
    
    # Check if file exists
    if [ -e "$full_path" ]; then
        # Detect if first non-empty line starts with "#"
        first_line=$(grep -m1 -o '^[[:space:]]*#' "$full_path")
        
        if [ -n "$first_line" ]; then
            echo "<section class=\"$class_name\">" >> ./index.html
        else
            echo "<div class=\"$class_name\">" >> ./index.html
        fi
        
        cmark-gfm "$full_path" >> ./index.html
        echo "Processing file: $full_path"
        
        if [ -n "$first_line" ]; then
            echo "</section>" >> ./index.html
        else
            echo "</div>" >> ./index.html
        fi
    else
        echo "<div class=\"$class_name\">File $full_path does not exist.</div>" >> ./index.html
    fi
    
done

# Close the HTML tags
echo "</div></body>
</html>" >> ./index2.html
