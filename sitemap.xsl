<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="https://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="sm">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Sitemap | Walkies With Perks</title>
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""/>
        <link href="https://fonts.googleapis.com/css2?family=Special+Elite&amp;family=Roboto:wght@400&amp;display=swap" rel="stylesheet"/>
        <style>
          * {{ box-sizing: border-box; margin: 0; padding: 0; }}

          body {{
            background-color: #111;
            color: #fff;
            font-family: 'Roboto', sans-serif;
            min-height: 100vh;
          }}

          header {{
            background-color: #111;
            border-bottom: 3px solid #fdcf03;
            padding: 28px 40px;
            text-align: center;
          }}

          header h1 {{
            font-family: 'Special Elite', cursive;
            font-size: 32px;
            color: #fdcf03;
            letter-spacing: 3px;
            margin-bottom: 6px;
          }}

          header p {{
            font-family: 'Special Elite', cursive;
            font-size: 14px;
            color: #aaa;
            letter-spacing: 1px;
          }}

          main {{
            max-width: 860px;
            margin: 48px auto;
            padding: 0 24px;
          }}

          .sitemap-intro {{
            font-family: 'Special Elite', cursive;
            font-size: 13px;
            color: #888;
            text-align: center;
            margin-bottom: 32px;
            letter-spacing: 1px;
          }}

          table {{
            width: 100%;
            border-collapse: collapse;
            background: #1a1a1a;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 24px rgba(0,0,0,0.4);
          }}

          thead {{
            background-color: #fdcf03;
          }}

          thead th {{
            font-family: 'Special Elite', cursive;
            font-size: 13px;
            color: #111;
            padding: 14px 20px;
            text-align: left;
            letter-spacing: 1px;
            text-transform: uppercase;
          }}

          tbody tr {{
            border-bottom: 1px solid #2a2a2a;
            transition: background 0.2s;
          }}

          tbody tr:last-child {{
            border-bottom: none;
          }}

          tbody tr:hover {{
            background-color: #222;
          }}

          tbody td {{
            padding: 16px 20px;
            font-size: 14px;
            vertical-align: middle;
          }}

          tbody td a {{
            color: #fdcf03;
            text-decoration: none;
            font-family: 'Special Elite', cursive;
            letter-spacing: 0.5px;
            transition: color 0.2s;
          }}

          tbody td a:hover {{
            color: #fff;
          }}

          .td-freq, .td-priority {{
            color: #aaa;
            font-size: 13px;
            text-transform: capitalize;
          }}

          .priority-high {{ color: #fdcf03; font-weight: bold; }}
          .priority-mid  {{ color: #ccc; }}
          .priority-low  {{ color: #666; }}

          footer {{
            text-align: center;
            padding: 32px 24px;
            font-family: 'Special Elite', cursive;
            font-size: 12px;
            color: #444;
            border-top: 1px solid #222;
            margin-top: 48px;
            letter-spacing: 1px;
          }}
        </style>
      </head>
      <body>

        <header>
          <h1>Walkies With Perks</h1>
          <p>XML Sitemap &#8212; Dog Training &amp; Walking Hull</p>
        </header>

        <main>
          <p class="sitemap-intro">
            This sitemap lists all pages on walkieswithperks.co.uk to help search engines index the site.
          </p>

          <table>
            <thead>
              <tr>
                <th>Page URL</th>
                <th>Change Frequency</th>
                <th>Priority</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sm:urlset/sm:url">
                <tr>
                  <td>
                    <a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a>
                  </td>
                  <td class="td-freq">
                    <xsl:value-of select="sm:changefreq"/>
                  </td>
                  <td>
                    <xsl:variable name="pri" select="sm:priority"/>
                    <xsl:choose>
                      <xsl:when test="$pri >= 0.9">
                        <span class="priority-high"><xsl:value-of select="$pri"/></span>
                      </xsl:when>
                      <xsl:when test="$pri >= 0.6">
                        <span class="priority-mid"><xsl:value-of select="$pri"/></span>
                      </xsl:when>
                      <xsl:otherwise>
                        <span class="priority-low"><xsl:value-of select="$pri"/></span>
                      </xsl:otherwise>
                    </xsl:choose>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </main>

        <footer>
          Copyright &#169; 2026 Walkies With Perks &#160;|&#160; Based in Hull
        </footer>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
