<?xml version="1.0" encoding="UTF-8" ?>
<!-- 
By Yasser Saidi
Github: yassersaidi
-->
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" 
        encoding="utf-8" 
        doctype-public="-//W3C//DTDXHTML 1.0 Transitional//EN" 
        doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" />
    <xsl:template match="/">
        <html
            xmlns="http://www.w3.org/1999/xhtml">
            <xsl:attribute name="dir"><xsl:value-of select="Mushaf/@Direction"></xsl:value-of></xsl:attribute>
            <body style="
                width:90%;
                background-image: url('Background/Sea.jpg');
                background-attachment: fixed;
                background-repeat: no-repeat;
                background-size: cover  ;
                font-family:'Sindbad';
                font-size:28px;
                margin: 10px auto">
                <h1 align="center">القرأن الكريم كاملا</h1>
                <div style="width:100%">
                    <div style="
                        width: 19%;
                        float: right;
                        margin-left:18px;">
                        <h5>الفهرس</h5>
                        <div style="
                            background-color:rgba(255,255,255,.5);
                            box-shadow: 0px 0px 30px    #CCC;
                            border-radius: 10px;
                            border-radius:5px;
                            border: 1px solid #ccc;
                        ">
                            <xsl:for-each select="Mushaf/Sura">
                                <a style="
                                    display:block;
                                    text-decoration:none;
                                    padding:5px 10px 5px 5px;
                                    font-size: 25px;
                                    border-bottom: 1px solid;
                                    color: #05f;">
                                    <xsl:attribute name="href">#<xsl:value-of select="@ID" /></xsl:attribute>
                                    <div>
                                        <span><xsl:value-of select="@ID" />.<xsl:value-of select="@Name" /></span>
                                    </div>
                                    <div style="font-size:15px">
                                        <span>اياتها <xsl:value-of select="@Nb_aya" /></span>
                                        -
                                        <span><xsl:value-of select="@Nozol" /></span>
                                        - 
                                        <a style="text-decoration:none">
                                            <xsl:attribute name="href">https://server11.mp3quran.net/yasser/<xsl:value-of select="@ID" />.mp3</xsl:attribute>
                                            <xsl:attribute name="title">الاستماع بصوت ياسر الدوسري</xsl:attribute>
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
                        padding:0 12px">
                        <h5 style="text-align:center">السور</h5>
                        <div>
                            <xsl:for-each select="Mushaf/Sura">
                                <div style="
                                    background-color:rgba(255,255,255,.5);
                                    margin: 30px 0;
                                    padding: 0px 0px 5px;
                                    border:1px solid rgba(0,0,0,.3);
                                    border-radius: 10px;
                                    box-shadow: 0px 0px 46px #CCC;">
                                    <xsl:attribute name="ID">
                                        <xsl:value-of select="@ID" />
                                    </xsl:attribute>
                                    <div style="
                                        text-align: center;
                                        font-size: 25px;
                                        padding: 15px 0;
                                        border-bottom: 2px solid #CCC;
                                        background:#ececec;
                                        border-radius: 10px 10px 0 0;">
                                        <span>سورة<xsl:value-of select="@Name" />
                                        </span> -
                                        <span>عدد الايات<xsl:value-of select="@Nb_aya" />
                                        </span> -
                                        <span>
                                            <xsl:value-of select="@Nozol" />
                                        </span>
                                    </div>
                                    <p style="
                                        line-height: 1.9;
                                        font-size: 25px;
                                        padding: 0 12px;
                                        ">
                                        <span style="
                                            font-family:'KacstFarsi';
                                            font-size:30px;
                                            display:block;
                                            text-align:center;">
                                            <xsl:if test="@ID != 009">
                                                <xsl:text>بسم الله الرحمن الرحيم</xsl:text>
                                            </xsl:if>
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
                                                font-size: 12px;
                                                ">
                                                    <xsl:value-of select="@ID" />
                                                </span>
                                            </span>
                                        </xsl:for-each>
                                        <xsl:text>[صدق الله العظيم]</xsl:text>
                                    </p>
                                </div>
                            </xsl:for-each>
                            <a style="
                                position: fixed;
                                bottom: 28px;
                                left: 9px;
                                color:#FFF;
                                background-color:#00111196;
                                padding: 8px 7px;
                                display: inline-block;
                                line-height: 1.9;
                                border-radius: 10px;
                                font-size: 23px;">
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
