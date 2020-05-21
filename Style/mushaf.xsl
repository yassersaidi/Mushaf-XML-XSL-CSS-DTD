<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTDXHTML 1.0 Transitional//EN" 
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
    <xsl:template match="/">
        <html dir="rtl" xmlns="http://www.w3.org/1999/xhtml">
            <body style="
                width:90%;
                background-image: url('../Background/Sea.jpg');
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover  ;
                font-family:'Sindbad';
                font-size:28px;
                margin: 10px auto"
            >
                <h1 align="center">جزء عم برواية: <xsl:value-of select="mushaf/@rewayat" /></h1>
                <div style="width:100%">
                    <div style="
                        width: 19%;
                        float: right;
                        margin-left:18px;"
                    >
                        <h5>الفهرس</h5>
                        <div style="
                            background-color:rgba(255,255,255,.5);
                            border:1px solid rgba(0,0,0,.3);
                            box-shadow: 0px 0px 5px;
                            border-radius:5px;
                        ">
                            <xsl:for-each select="mushaf/sura">
                                <a style="
                                    display:block;
                                    text-decoration:none;
                                    padding:5px;
                                    font-size: 25px;
                                    border-bottom: 1px solid;"
                                >
                                    <xsl:attribute name="href">#<xsl:value-of select="@id" /></xsl:attribute>
                                    <div>
                                        <span><xsl:value-of select="@id" />.<xsl:value-of select="@name" /></span>
                                    </div>
                                    <div style="font-size:15px">
                                        <span>اياتها <xsl:value-of select="@nb_aya" /></span> - 
                                        <span> <xsl:value-of select="@nozol" /></span> - 
                                        <a style="text-decoration:none">
                                            <xsl:attribute name="href">https://www.mp3quran.net/includes/downloadmp3.php?media=https://server7.mp3quran.net/basit/<xsl:value-of select="@id" />.mp3</xsl:attribute>
                                            الاستماع
                                        </a>
                                    </div>
                                </a>
                            </xsl:for-each>
                        </div>
                    </div>
                    <div style="
                        width:71%;
                        float:right;
                        padding:0 12px"
                    >
                        <h5 style="text-align:center">السور</h5>
                        <div>
                            <xsl:for-each select="mushaf/sura">
                                <div style="
                                    background-color:rgba(255,255,255,.5);
                                    margin: 30px 0;
                                    padding: 0px 0px 5px;
                                    border:1px solid rgba(0,0,0,.3);
                                    border-radius: 10px;
                                    box-shadow: 0px 0px 5px;"
                                >
                                    <xsl:attribute name="id">
                                            <xsl:value-of select="@id" />
                                        </xsl:attribute>
                                    <div style="
                                        text-align: center;
                                        font-size: 25px;
                                        padding: 15px 0;
                                        border-bottom: 1px solid;
                                        background:#d9cbcb;
                                        border-radius: 10px 10px 0 0;"
                                    >
                                        <span>سورة <xsl:value-of select="@name" /></span> -
                                        <span>عدد الايات  <xsl:value-of select="@nb_aya" /></span> -
                                        <span><xsl:value-of select="@nozol" /> </span>
                                    </div>
                                    <p style="
                                        line-height: 1.9;
                                        font-size: 25px;
                                        padding: 0 12px;
                                        "
                                    >
                                        <span style="
                                            font-family:'KacstFarsi';
                                            font-size:30px;
                                            display:block;
                                            text-align:center;"
                                        >
                                            <xsl:text>بسم الله الرحمن الرحيم</xsl:text>
                                        </span>
                                        <xsl:for-each select="aya">
                                            <span style="
                                            line-height: 1.9;
                                            text-shadow: 0px 0px 5px rgb(46, 187, 187);
                                            ">
                                                <xsl:value-of select="." />
                                                <span style="
                                                width: 25px;
                                                height: 25px;
                                                line-height: 25px;
                                                display: inline-block;
                                                text-align: center;
                                                border-radius: 50%;
                                                border: 1px solid;
                                                background-color:rgba(125, 125, 125 ,.2);
                                                margin: 0 3px;
                                                font-size: 16px;
                                                ">
                                                    <xsl:value-of select="@id" />
                                                </span>
                                                
                                            </span>
                                        </xsl:for-each>
                                        <xsl:text>[صدق الله العظيم]</xsl:text>
                                    </p>
                                </div>
                            </xsl:for-each>
                            <a style="text-decoration:none">
                                <xsl:attribute name="href">#</xsl:attribute>
                                الفهرس
                            </a>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
