@for /f "usebackq delims=|" %%f in (`dir /b "..\resources\examplescenario*.xml"`) do (

copy ..\resources\%%f .
java -jar saxon9he.jar -s:%%f -xsl:diagram.xslt -o:diagram.txt --suppressXsltNamespaceCheck:on

java -jar plantuml.jar diagram.txt
echo java -jar plantuml.jar diagram.txt -tsvg
move diagram.png ..\images\%%~nf-diagram.png

java -jar saxon9he.jar -s:diagram.cmapx -xsl:cmap.xslt -o:diagram.cmapx2 --suppressXsltNamespaceCheck:on
del diagram.cmapx
ren diagram.cmapx2 diagram.cmapx

java -jar saxon9he.jar -s:%%f -xsl:full_template_simple.xslt -o:%%~nf-scenario.html pref="%%~nf-" --suppressXsltNamespaceCheck:on
move %%~nf-scenario.html ..\pagecontent

echo del diagram.txt
echo del diagram.cmapx

)

del examplescenario*.xml

echo java -jar saxon9he.jar -s:..\resources\glossary.xml -xsl:glossary.xslt -o:..\pagecontent\mma_4.glossary.xml

