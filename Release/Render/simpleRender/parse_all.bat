java -jar saxon9he.jar -s:current.xml -xsl:diagram.xslt -o:diagram.txt --suppressXsltNamespaceCheck:on
java -jar plantuml.jar diagram.txt 
move diagram.png .\output\images\current-diagram.png

if exist diagram.cmapx (
    rem file exists
) else (
    copy diagram_empty.cmapx diagram.cmapx
)

java -jar saxon9he.jar -s:diagram.cmapx -xsl:cmap.xslt -o:diagram.cmapx2 --suppressXsltNamespaceCheck:on 
del diagram.cmapx
ren diagram.cmapx2 diagram.cmapx

java -jar saxon9he.jar -s:current.xml -xsl:full_template_simple_png.xslt -o:current.html pref="current-" --suppressXsltNamespaceCheck:on
move current.html .\output\pages
rem  del diagram.txt
del diagram.cmapx

