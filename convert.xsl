<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/gpx">
		<routing_points>
			<set>
				<name>
					<xsl:value-of select="metadata/name" />
				</name>

				<!-- create individual waypoints and a destination for the last element -->
				<xsl:for-each select="rte/rtept">
					<xsl:choose>
						<xsl:when test="position() != last()">
							<waypoint>
								<name>
									<xsl:value-of select="name" />
								</name>
								<lat>
									<xsl:value-of select="format-number(round(@lat * 360 * 10000),'#')" />
								</lat>
								<lon>
									<xsl:value-of select="format-number(round(@lon * 360 * 10000),'#')" />
								</lon>
							</waypoint>
						</xsl:when>
						<xsl:otherwise>
							<destination>
								<name>
									<xsl:value-of select="name" />
								</name>
								<lat>
									<xsl:value-of select="format-number(round(@lat * 360 * 10000),'#')" />
								</lat>
								<lon>
									<xsl:value-of select="format-number(round(@lon * 360 * 10000),'#')" />
								</lon>
							</destination>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</set>
		</routing_points>
	</xsl:template>
</xsl:stylesheet>
