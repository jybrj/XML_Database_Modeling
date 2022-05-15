<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" />
	<xsl:template match="Travel_Agency_Data">

<html>
			<h1 style="font-family:EB Garamond;font-size:16pt; color:DarkSlateGray;">
		There are <xsl:value-of select="count(Travel_Agency_Data/Client_Data/Booking_Information/Additional_Info[Family_Travel= 'true'])"/> Clients traveling with Family in the Database
		
			</h1>
			<body>
				<table border="1.5">
					<tr style="background-color:SeaGreen;color:WhiteSmoke">
						<th>Client Name</th>
						<th>Offer Recieved</th>
						<th>Credit Card Brand</th>
						<th>Amount Paid</th>
						<th>No. of Families</th>
						<th>No. of Children</th>
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
				<xsl:value-of select="Booking_Information/Promo_Offer"/>
			</td>
			<td style="font-style:italic;text-align:center;">
				<xsl:value-of select="Booking_Information/Payment_details/Card_Brand"/>
			</td>
			<td style="text-align:center;">
				<xsl:value-of select="Booking_Information/Amount_Paid/@currency"/>
			</td>
			<td style="text-align:center;color:MidnightBlue">
				<xsl:value-of select="Booking_Information/Additional_Info/Family_Travel/No_of_Families "/>
			
			</td>
			<td style="text-align:center;color:MidnightBlue">
				<xsl:value-of select="Booking_Information/Additional_Info/Family_Travel/Below12_Members"/>
			</td>
				
		</tr>
	</xsl:template>
</xsl:stylesheet>