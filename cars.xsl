<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output doctype-system="about:legacy-compat"
        indent="yes"
        method="xml"
        omit-xml-declaration="no"/>

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="da">
    <head><title>Cars</title></head>
    <style>
    table, th, td {
      border: 1px solid blue;
    }
    section {
      margin-right: 78%;
      
    }
    h1 {
      text-align: center;
    }
    </style>
    <body>
   <section style="background-color:#000000"> 
     <h1 style="color:#ffffff;">Second Hand Sardine Cans</h1> 
   </section>
    <table>
     
       <tr>
            <th style="text-align:left;" >Make</th>
            <th >Model</th> 
            <th >Year</th>
            <th >KMs</th>
            <th >Color</th>
            <th >Price</th>
            <th >Warranty</th>
       </tr>

         <xsl:for-each select = "cars/car"> 
                   <tr> 
                     <td><xsl:value-of select = "@manufacturer"/></td> 
                     <td><xsl:value-of select = "@model"/></td> 
                     <td><xsl:value-of select = "@year"/></td> 
                     <td><xsl:value-of select = "meter"/></td> 
                     
                        <xsl:choose> 

                          <xsl:when test = "color = 'silver'">
                          <td style="color:#ffffff;" bgcolor="{color}"> <xsl:value-of select = "color"/></td>
                          </xsl:when>
                          
                          <xsl:when test = "color = 'red'">
                          <td style="color:#ffffff;" bgcolor="{color}"> <xsl:value-of select = "color"/></td>
                          </xsl:when>
      
                          <xsl:otherwise>
                          <td style="color:#ffffff;" bgcolor="{color}"> <xsl:value-of select = "color"/></td>
                          </xsl:otherwise>
                        </xsl:choose>
                     
                     <td><xsl:value-of select = "price"/></td>
                     <td><xsl:value-of select = "dealersecurity/@buyback"/></td>
                   </tr> 
            </xsl:for-each> 
        <tr > 
         <td colspan="4" > Average price</td> 
         <td> Dkr</td>
         <td> 133266</td>
        </tr>
    </table>
    
    </body>
    </html>
  </xsl:template>



  <!--   
    <xsl:template match="cars/car">
		<tr><xsl:apply-templates/></tr>
	</xsl:template>

     <xsl:template match="car/manufacturer">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/model">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/year">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/meter">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/color">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/price">
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="car/dealersecurity">
		<td><xsl:apply-templates/></td>
	</xsl:template>
  -->
</xsl:stylesheet>