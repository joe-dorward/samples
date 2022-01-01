<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes" />
      
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
  <link rel="stylesheet" type="text/css" href="artifacts/common.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/term-and-definition.css" />
  
  <link rel="stylesheet" type="text/css" href="artifacts/entity-relationship-diagram.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/entities-in.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/properties.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/entities-out.css" />

  <link rel="stylesheet" type="text/css" href="artifacts/dataview.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/data.css" />

  <!--<link rel="stylesheet" type="text/css" href="artifacts/workflow.css" />-->
  <link rel="stylesheet" type="text/css" href="artifacts/ten-thousand-feet.css" />
  <link rel="stylesheet" type="text/css" href="artifacts/for-instance.css" />

  <link rel="stylesheet" type="text/css" href="artifacts/tables.css" />

<script>
  function on_mouse_over(term){
  // handles mouse over a term
  term = term + '_term'

  document.getElementById(term).style.position = "absolute"
  document.getElementById(term).style.left = event.clientX + 50
  document.getElementById(term).style.top = window.pageYOffset + event.clientY + 50 // - 50
  document.getElementById(term).style.display = "block"

  document.getElementById(term).style.color = "honeydew"
  document.getElementById(term).style.background = "forestgreen"
  document.getElementById(term).style.borderRadius = "7px"
  document.getElementById(term).style.boxShadow = "0px 0px 40px 0px forestgreen"
  }
  function on_mouse_out(term){
  // handles mouse leaving a term
  term = term + '_term'

  document.getElementById(term).style.display = "none"
  }
</script>
  <body id="top">
    <div class="page-wrapper">

    <!-- NEW MENU -->
    <xsl:if test="1=1">
    <div class="header-wrapper">      
      <div class="menu-wrapper">
        
        <div style="height: 80px; padding: 0;">
          <img height="60" src="artifacts/logo.png" />
          <span style="font-family: tahoma; font-size: 40pt; color: slategrey; height: 50px;">AP2 Data Model</span>
          <span style="float: right; font-family: courier new; font-size: 50pt; color: forestgreen; height: 50px; margin: 0px;">Beta</span>

          <!-- numbered list of entities -->
          <xsl:call-template name="listEntities"></xsl:call-template>
        </div>        

        <div class="alpha-menu">0
          <xsl:for-each select="/entities/entity[starts-with(./name, '0') and not(@txnyd)]">
            <xsl:call-template name="addMenuItem">
              <xsl:with-param name="name" select="./name" />
              <xsl:with-param name="uid" select="./uid" />
            </xsl:call-template>
          </xsl:for-each>
        </div>
        
        <div class="alpha-menu">A
          <xsl:for-each select="/entities/entity[starts-with(./name, 'A') and not(contains(./name, '.0')) and not(@txnyd) or starts-with(./name, 'a') and not(contains(./name, '.0')) and not(@txnyd)]">
            <xsl:call-template name="addMenuItem">
              <xsl:with-param name="name" select="./name" />
              <xsl:with-param name="uid" select="./uid" />
            </xsl:call-template>
          </xsl:for-each>
        </div>
        
        <!-- AND SO ON -->
