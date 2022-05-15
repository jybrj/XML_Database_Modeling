<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="Travel_Agency_Data">
		<html>
			<h1 style="font-family:EB Garamond;font-size:16pt; color:DarkSlateGray;">
	     Base Client Information 
		
	</h1>
			<body>
				<table border="1.5">
					<tr style="background-color:SeaGreen;color:WhiteSmoke">
						<th>Client Name</th>
						<th>Client ID</th>
						<th>Nationality</th>
						<th>City</th>
						<th>Gender</th>
						<th>Age</th>
					</tr>
					<tr>
						<xsl:apply-templates select="Client_Data"/>
					</tr>
				</table>
				
			</body>
			
		</html>
	</xsl:template>
	<xsl:template match="Client_Data">
		<tr>
			
				<td style="font-weight:bold;text-align:center;">
					<xsl:value-of select="Personal_Information/Client/FirstName"/>
					<xsl:text> </xsl:text>
					<xsl:value-of select="Personal_Information/Client/LastName"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="Personal_Information/Client/@id"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="Personal_Information/Client/Nationality"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="Personal_Information/Client/City"/>
				</td>
				<td >
					<xsl:value-of select="Personal_Information/Client/Gender"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="Personal_Information/Client/Age"/>
				</td>
			
		</tr>
</xsl:template>
</xsl:stylesheet>