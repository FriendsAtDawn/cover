#! /bin/bash

echo "<!DOCTYPE html>
<html>
<head>
 <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
 <title>Directory Tree</title>
 <link rel=\"stylesheet\" href=\"./min.css\" />
</head>
<body>
<div class=\"wrapper\">"                  > index.html

for class in logo recursos sponsors extras paquetes condiciones acerca agradecimientos news 

 do

 echo "<div class=\""$class"\">"               >> index.html

                if [ -e $class".md" ]; then
    
                        pandoc $class.md                  >> index.html
                else
                        
                        echo "File "$class".md does not exist."
                fi

done

echo "</div></body></html>"                     >> index.html

