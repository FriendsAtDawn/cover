#! /bin/bash

echo "<!DOCTYPE html>
<html>
<head>
 <meta http-equiv=\"Content-Type\" content=\"text/html
charset=UTF-8\">
 <title>villalba.is.eu.org</title>
 <link rel="stylesheet" href="./lit.css" />
</head>
<body>
<div class="wrapper"> <div class="one">" >index.html

if [ -e "logo.md" ]; then

    pandoc logo.md >>index.html
else

    echo "File logo.md does not exist."
fi

echo "</div><div class="two">" >>index.html

if [ -e "log.md" ]; then

    pandoc recursos.md >>index.html
else

    echo "File recursos.md does not exist."
fi

echo "</div><div class="three">" >>index.html

if [ -e "sponsors.md" ]; then

    pandoc sponsors.md >>index.html
else

    echo "File logo.md does not exist."
fi

echo "</div><div class="four">" >>index.html

if [ -e "extras.md" ]; then

    pandoc extras.md >>index.html
else

    echo "File logo.md does not exist."
fi

echo "</div><div class="five">" >>index.html

if [ -e "paquetes.md" ]; then

    pandoc paquetes.md >>index.html
else

    echo "File paquetes.md does not exist."
fi

echo "</div><div class="six">" >>index.html

if [ -e "condiciones.md" ]; then

    pandoc condiciones.md >>index.html
else

    echo "File condiciones.md does not exist."
fi

echo "</div><div class="seven">" >>index.html

if [ -e "acerca.md" ]; then

    pandoc acerca.md >>index.html
else

    echo "File log.md does not exist."
fi

echo "</div><div class="eight">" >>index.html

if [ -e "agradecimientos.md" ]; then

    pandoc agradecimientos.md >>index.html
else

    echo "File agradecimientos.md does not exist."
fi

echo "</div><div class="nine">" >>index.html

if [ -e "news.md" ]; then

    pandoc news.md >>index.html
else

    echo "File news.md does not exist."
fi
echo "</div></body></html>" >>index.html
