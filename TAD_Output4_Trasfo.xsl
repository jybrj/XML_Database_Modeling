<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="Client_Overview">
		<html>
			<h1 style="font-family:EB Garamond;font-size:14pt; color:DimGray">Client Tour Overview </h1>
			<body>
				<table border="1.5">
					<tr style="background-color:SteelBlue;color:Azure">
						<th>Client Age</th>
						<th>Tour Type</th>
						<th>Tour City</th>
						<th>Hotel Name</th>
						<th>Room Type</th>
						<th>Airlines Name</th>
					</tr>
					<tr>
						<xsl:apply-templates select="Client_Info"/>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="Client_Info">
			<tr>
				<td style="text-align:center;">
					<xsl:value-of select="Age"/>
				</td>
				<td style="font-weight:bold;text-align:center;">
					<xsl:value-of select="TourType"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="TourCity"/>
				</td>
				<td style="text-align:center;font-style:italic;">
					<xsl:value-of select="HotelName"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="RoomType"/>
				</td>
				<td style="text-align:center;">
					<xsl:value-of select="AirlinesName"/>
				</td>
			</tr>
	</xsl:template>
</xsl:stylesheet>