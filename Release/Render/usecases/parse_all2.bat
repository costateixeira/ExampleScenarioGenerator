echo %cd%
@for /f "usebackq delims=|" %%f in (`dir /b "..\resources\examplescenario*.xml"`) do (
copy %cd%\..\resources\%%f .
java -jar %cd%\saxon9he.jar -s:%%f -xsl:%cd%\diagram.xslt -o:%cd%\diagram.txt --suppressXsltNamespaceCheck:on

java -jar %cd%\plantuml.jar diagram.txt
move %cd%diagram.png %cd%\..\images\%%~nf-diagram.png

java -jar %cd%\saxon9he.jar -s:%cd%\diagram.cmapx -xsl:%cd%\cmap.xslt -o:%cd%\diagram.cmapx2 --suppressXsltNamespaceCheck:on
del %cd%\diagram.cmapx
ren %cd%\diagram.cmapx2 %cd%\diagram.cmapx

java -jar %cd%\saxon9he.jar -s:%%f -xsl:full_template.xslt -o:%%~nf-scenario.xml pref="%%~nf-" --suppressXsltNamespaceCheck:on
move %cd%\%%~nf-scenario.xml %cd%\..\pagecontent

java -jar %cd%\saxon9he.jar -s:%%f -xsl:exampleTOC.xslt -o:toc.xhtml
move %cd%\toc.xhtml %cd%\..\pagecontent\examples.xml


del %cd%\diagram.txt
del %cd%\diagram.cmapx

)

del %cd%\examplescenario*.xml

java -jar %cd%\saxon9he.jar -s:..\resources\glossary.xml -xsl:glossary.xslt -o:..\pagecontent\mma_4.glossary.xml


pause