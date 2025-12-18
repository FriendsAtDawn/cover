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
    ["gaceta.md"]="gaceta"
    ["revista.md"]="revista"
)

# Start creating the index.html file
echo "<!DOCTYPE html>
<html>
<head>
 <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
<link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"img/apple-touch-icon.png\">
<link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"img/favicon-32x32.png\">
<link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"img/favicon-16x16.png\">
<link rel=\"manifest\" href=\"img/site.webmanifest\">
 <meta name=\"description\" content=\"Portal de Buscador de Jurisprudencia, blog, recursos, RUC etc.\">
  <meta name=\"keywords\" content=\"jurisprudencia, buscador de jurisprudencia, buscador avanzado, portal\">
  <meta name=\"author\" content=\"Wilson Villalba\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
 <title>villalba.is.eu.org</title>
 <link rel=\"stylesheet\" href=\"./styles/lit.css\" />
 <link rel=\"stylesheet\" href=\"./styles/dettach.css\" />
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

