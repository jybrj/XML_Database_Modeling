<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="Travel_Agency_Data">
		<html>
			<h1 style="font-family:EB Garamond;font-size:16pt; color:DarkSlateGray;">
	     Information about Clients and their corressponding Tour Package
		</h1>
			<body>
				<table border="1.5">
					<tr style="background-color:SeaGreen;color:WhiteSmoke">
						<th>Client ID</th>
						<th>Client Name</th>
						<th>Tour ID</th>
						<th>Tour Category</th>
						<th>Tourism Type</th>
						<th>Tour City</th>
						<th>Tour Country</th>
						<th>Tour Cost</th>
						<th>Tour Duration</th>
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
			<td style="text-align:center;">
				<xsl:value-of select="Personal_Information/Client/@id"/>
			</td>
			<td style="font-weight:bold;text-align:center;">
				<xsl:value-of select="Personal_Information/Client/FirstName"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="Personal_Information/Client/LastName"/>
			</td>
			<td style="text-align:center;">
				<xsl:value-of select="Tour_Information/Tour/@id"/>
			</td>
			<xsl:choose>
				<xsl:when test="Tour_Information/Tour/Tour_Category='International'">
					<td style="font-style:italic;text-align:center;">
						<xsl:value-of select="Tour_Information/Tour/Tour_Category"/>
					</td>
				</xsl:when>
				<xsl:otherwise>
					<td style="font-style:normal;text-align:center;">
						<xsl:value-of select="Tour_Information/Tour/Tour_Category"/>
					</td>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="Tour_Information/Tour/Tour_Type='BeachTourism'">
				<td style="color:CadetBlue;text-align:center;">
					<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>
				</td>
			</xsl:if>
			<xsl:if test="Tour_Information/Tour/Tour_Type='CulturalTourism'">
				<td style="color:Coral;text-align:center;">
					<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>
				</td>
			</xsl:if>
			<xsl:if test="Tour_Information/Tour/Tour_Type='EcoTourism'">
				<td style="color:Sienna;text-align:center;">
					<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>
				</td>
			</xsl:if>
			<xsl:if test="Tour_Information/Tour/Tour_Type='AdventureTourism'">
				<td style="color:PaleVioletRed;text-align:center;">
					<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>
				</td>
			</xsl:if>
			<td style="text-align:center;">
				<xsl:value-of select="Tour_Information/Tour/Tour_City"/>
			</td>
			<td style="text-align:center;">
				<xsl:value-of select="Tour_Information/Tour/Tour_Country"/>
			</td>
			<td style="text-align:center;">
				<xsl:value-of select="Tour_Information/Tour/Tour_Price/@currency"/>
			</td>
			<td style="font-style:oblique;text-align:center;">
				<xsl:value-of select="Tour_Information/Tour/Tour_Details"/>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>	