<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Information</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid #ddd; padding: 8px; }
                    th { background-color: #4a6fa5; color: white; }
                    tr:nth-child(even) { background-color: #f2f2f2; }
                    .high-salary { background-color: #e6f7e6; }
                    .low-salary { background-color: #ffe6e6; }
                </style>
            </head>
            <body>
                <h2>Student Records</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Department</th>
                        <th>Salary</th>
                        <th>Salary Level</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <tr>
                            <xsl:attribute name="class">
                                <xsl:choose>
                                    <xsl:when test="salary > 55000">high-salary</xsl:when>
                                    <xsl:otherwise>low-salary</xsl:otherwise>
                                </xsl:choose>
                            </xsl:attribute>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="position"/></td>
                            <td><xsl:value-of select="department"/></td>
                            <td>$<xsl:value-of select="salary"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="salary > 55000">High</xsl:when>
                                    <xsl:otherwise>Low</xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<xsl:output method="html" encoding="UTF-8" indent="yes"/>