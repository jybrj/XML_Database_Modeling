<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"
	            indent="yes"/>
	<xsl:template match="Travel_Agency_Data">
		<xsl:comment>Created from Travel Agency Data by XSLT</xsl:comment>
		<xsl:text>&#10;</xsl:text>
		<xsl:processing-instruction name="xml-stylesheet">
			<xsl:text>href="TAD_Output4_Transfo.xsl" type="text/xsl"</xsl:text>
		</xsl:processing-instruction>
		<xsl:text>&#10;</xsl:text>
		<Client_Overview>
			<xsl:comment>Created from Travel Agency Data by XSLT</xsl:comment>
			<xsl:apply-templates/>
		</Client_Overview>
	</xsl:template>
	<xsl:template match="Travel_Agency_Data/Client_Data">
		<Client_Info>
			<Age>
				<xsl:value-of select="Personal_Information/Client/Age"/>
			</Age>
			<Gender>
				<xsl:value-of select="Personal_Information/Client/Gender"/>
			</Gender>
			<French_Nationality>
				<xsl:choose>
					<xsl:when test="Personal_Information/Client/Nationality='French'">Yes</xsl:when>
					<xsl:otherwise>No</xsl:otherwise>
				</xsl:choose>
			</French_Nationality>
			<TourCategory>
				<xsl:value-of select="Tour_Information/Tour/Tour_Category"/>
			</TourCategory>
			<TourType>
				<xsl:value-of select="Tour_Information/Tour/Tour_Type"/>
			</TourType>
			<TourCity>
				<xsl:value-of select="Tour_Information/Tour/Tour_City"/>
			</TourCity>
			<HotelName>
				<xsl:value-of select="Accommodation_Information/Hotel_Name"/>
			</HotelName>
			<RoomType>
				<xsl:value-of select="Accommodation_Information/Hotel_RoomType"/>
			</RoomType>
			<AirlinesName>
				<xsl:value-of select="Transport_Information/Flight_Info/AirlineName"/>
			</AirlinesName>
			<RentalCarName>
				<xsl:value-of select="concat(Transport_Information/RentalCar/Brand,Transport_Information/RentalCar/Model)"/>
			</RentalCarName>

		</Client_Info>
	</xsl:template>
</xsl:stylesheet>