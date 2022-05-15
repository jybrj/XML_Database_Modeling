<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
{ "Client_Info": [
<xsl:apply-templates select="Travel_Agency_Data/Client_Data"/>
] }
</xsl:template>
	<xsl:template match="Client_Data">
{ "id": "<xsl:value-of select="Personal_Information/Client/@id"/>",
 "First_Name": "<xsl:value-of select="Personal_Information/Client/FirstName"/>",
 "Last_Name": "<xsl:value-of select="Personal_Information/Client/LastName"/>",
 "Nationality": "<xsl:value-of select="Personal_Information/Client/Nationality"/>",
 "CityRes": "<xsl:value-of select="Personal_Information/Client/City"/>"
 "TourType": "<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>"
 }
</xsl:template>
</xsl:stylesheet>

