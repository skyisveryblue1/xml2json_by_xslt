<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    {
      "FlightId":0,
      "SiteId": <xsl:value-of select="connect/daily/field[@name='SiteId']/@value"/>,
      "FlightNumber":"<xsl:value-of select="connect/daily/@number"/>",
      "CallSign":"<xsl:value-of select="connect/daily/field[@name='CallSign']/@value"/>",
      "FlightRule":<xsl:value-of select="connect/daily/field[@name='FlightRule']/@value"/>,
      "DeicingRequest":<xsl:value-of select="connect/daily/field[@name='DecingRequest']/@value"/>,
      "Runway":"<xsl:value-of select="connect/daily/field[@name='Runway']/@value"/>",
      "Stand":"<xsl:value-of select="connect/daily/field[@name='Stand']/@value"/>",
      "AirlinePriority":<xsl:value-of select="connect/daily/field[@name='AirlinePriority']/@value"/>,
      "EstimatedOffBlockTime":"<xsl:value-of select="connect/daily/field[@name='EstimatedOffBlockTime']/@value"/>-05:00",
      "ScheduledOffBlockTime":"<xsl:value-of select="connect/daily/field[@name='ScheduledOffBlockTime']/@value"/>-05:00",
      "TargetOffBlockTime":"<xsl:value-of select="connect/daily/field[@name='TargetOffBlockTime']/@value"/>-05:00",
      "TargetTakeOffTime":"<xsl:value-of select="connect/daily/field[@name='TargetTakeOffTime']/@value"/>-05:00",
      "TargetStartUpApprovalTime":"<xsl:value-of select="connect/daily/field[@name='TargetStartUpApprovalTime']/@value"/>-05:00",
      "EstimatedTaxiOutTimeInSeconds":<xsl:value-of select="connect/daily/field[@name='EstimatedTaxiOutTimeInSeconds']/@value"/>,
      "EstimatedRunwayWaitTimeInSeconds":<xsl:value-of select="connect/daily/field[@name='EstimatedRunwayWaitTimeInSeconds']/@value"/>,
      "EstimatedDeicingTimeInSeconds":<xsl:value-of select="connect/daily/field[@name='EstimatedDeicingTimeInSeconds']/@value"/>,
      "IsManualFixed":<xsl:value-of select="connect/daily/field[@name='IsManualFixed']/@value"/>,
      "ParkPosition":<xsl:value-of select="connect/daily/field[@name='ParkPosition']/@value"/>,
      "Comment":"<xsl:value-of select="connect/daily/field[@name='Comment']/@value"/>",
      "EstimatedTaxiTimeToPadInSeconds":<xsl:value-of select="connect/daily/field[@name='EstimatedTaxiTimeToPadInSeconds']/@value"/>
    }
  </xsl:template>
</xsl:stylesheet>
