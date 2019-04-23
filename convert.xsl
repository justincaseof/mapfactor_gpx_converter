<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   
   <xsl:template match="/gpx">
      <!-- gpx -->
      <routing_points>
         <set>
            
            <name><xsl:value-of select="metadata/name" /></name>
            
            <xsl:for-each select="rte/rtept">
               <waypoint>
                  <name>
                     <xsl:value-of select="name" />
                  </name>
                  <lat>
                     <xsl:value-of select="round(@lat * 360 * 10000)" />
                  </lat>
                  <lon>
                     <xsl:value-of select="round(@lon * 360 * 10000)" />
                  </lon>
               </waypoint>
            </xsl:for-each>

         </set>
      </routing_points>
   
   </xsl:template>
   
</xsl:stylesheet>
