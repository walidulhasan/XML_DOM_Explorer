<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="/contracts">
    <html>
      <head>
        <title>DOM Explorar</title>
        <style type="text/css">
          table{
          width:100%;
          }
          thead tr th{
          padding-left:5px;
          background-color:red;
          color:white;
          }
          td{
          padding-left:5px;
          background-color:aqua;
          color:dark-blue;
          }
        </style>
      </head>
      <body>
        <center>
          <h2>Contact List using XML and XSL with Email link</h2>
        </center>
        <table border="1" cellspecing="0" cellpadding="10">
          <tr>
            <th>Name</th>
            <th>Gender</th>
            <th>Age</th>
            <th>Phone</th>
            <th>Email</th>
          </tr>
          <xsl:apply-templates select="contract"></xsl:apply-templates>
        </table>
        <center>
          <h3>Contact List using XML and XSL</h3>
        </center>
        <table border="1" cellspecing="0" cellpadding="10">
          <thead>
            <tr>
              <th>Name</th>
              <th>Gender</th>
              <th>Age</th>
              <th>Phone</th>
              <th>Email</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="contract">
              <tr>
                <td>
                  <xsl:value-of select="name"/>
                </td>
                <td>
                  <xsl:value-of select="@gender"/>
                </td>
                <td>
                  <xsl:value-of select="age"/>
                </td>
                <td>
                  <xsl:value-of select="phone"/>
                </td>
                <td>
                  <xsl:value-of select="email"/>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="contract">
    <tr>
      <td>
        <xsl:value-of select="name"/>
      </td>
      <td>
        <xsl:value-of select="@gender"/>
      </td>
      <td>
        <xsl:value-of select="age"/>
      </td>
      <td>
        <xsl:value-of select="phone"/>
      </td>
      <td>
        <a href="mailto:{email}">
          <xsl:value-of select="email"/>
        </a>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
