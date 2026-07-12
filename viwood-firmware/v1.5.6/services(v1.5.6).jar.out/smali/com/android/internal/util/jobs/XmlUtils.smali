.class public Lcom/android/internal/util/jobs/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# static fields
.field private static final STRING_ARRAY_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1691
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 1700
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1701
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1697
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final convertValueToBoolean(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 296
    :cond_0
    const-string p1, "1"

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "true"

    .line 297
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "TRUE"

    .line 298
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final convertValueToInt(Ljava/lang/CharSequence;I)I
    .locals 7

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 312
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 323
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    move v0, v3

    :goto_0
    const/16 v4, 0x30

    .line 328
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    if-ne v4, v5, :cond_5

    sub-int/2addr p1, v3

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x78

    if-eq v3, v1, :cond_4

    const/16 v3, 0x58

    if-ne v3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0x8

    move v2, p1

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_5
    const/16 p1, 0x23

    .line 343
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/16 v6, 0xa

    .line 349
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public static final convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I
    .locals 2

    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 277
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 278
    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static convertValueToUnsignedInt(Ljava/lang/String;I)I
    .locals 1

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/jobs/XmlUtils;->parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public static makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;
    .locals 1

    .line 255
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    if-eqz v0, :cond_0

    .line 256
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    return-object p0

    .line 258
    :cond_0
    new-instance v0, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;

    invoke-direct {v0, p0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlPullParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method

.method public static makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;
    .locals 1

    .line 132
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    if-eqz v0, :cond_0

    .line 133
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlSerializer;

    invoke-direct {v0, p0}, Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlSerializer;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-object v0
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1710
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1719
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1721
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1725
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseUnsignedIntAttribute(Ljava/lang/CharSequence;)I
    .locals 6

    .line 361
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x1

    if-ne v1, v3, :cond_3

    sub-int/2addr v0, v5

    if-nez v0, :cond_0

    return v2

    .line 373
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v1, v0, :cond_2

    const/16 v1, 0x58

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    move v2, v0

    goto :goto_2

    :cond_3
    const/16 v0, 0x23

    .line 382
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_4

    :goto_1
    move v2, v5

    goto :goto_2

    :cond_4
    const/16 v4, 0xa

    .line 387
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1926
    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 1928
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1846
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2

    .line 1852
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1853
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 1855
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1856
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    .line 1859
    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .locals 2

    .line 1898
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1900
    :try_start_0
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    .line 1905
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1906
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1907
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static readFloatAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1819
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1821
    :try_start_0
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1823
    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1826
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1828
    :try_start_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 1830
    :catch_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as long"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1749
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1751
    :try_start_0
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1753
    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1756
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1758
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 1760
    :catch_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as int"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    .line 1733
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1734
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 1736
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1737
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1741
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :goto_0
    return p2
.end method

.method public static final readListXml(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 990
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 991
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/jobs/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1792
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1794
    :try_start_0
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 1796
    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1799
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1801
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    .line 1803
    :catch_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as long"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .line 1776
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlPullParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1777
    check-cast p0, Lcom/android/modules/utils/TypedXmlPullParser;

    invoke-interface {p0, v1, p1, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 1779
    :cond_0
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1780
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1784
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :goto_0
    return-wide p2
.end method

.method public static final readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 970
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 971
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/jobs/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public static final readSetXml(Ljava/io/InputStream;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1012
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1013
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 1014
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/jobs/XmlUtils;->readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    return-object p0
.end method

.method public static readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1886
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1084
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1087
    invoke-static {p0, p2, p3, v3}, Lcom/android/internal/util/jobs/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 1088
    aget-object v2, p2, v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1090
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 1093
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1096
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 1099
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Document ended before "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisBooleanArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1487
    const-string/jumbo p2, "num"

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1488
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1490
    new-array p2, p2, [Z

    .line 1493
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 1495
    const-string/jumbo v4, "item"

    if-ne v1, v3, :cond_1

    .line 1496
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    aput-boolean v1, p2, v2

    goto :goto_1

    .line 1499
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected item tag at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1502
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 1504
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1507
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1511
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    goto :goto_0

    .line 1514
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisByteArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 1244
    const-string/jumbo v0, "num"

    invoke-interface {p0, p2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    .line 1248
    new-array v0, v0, [B

    .line 1250
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    if-lez p2, :cond_3

    .line 1254
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v2, p2, 0x2

    if-ne v1, v2, :cond_0

    .line 1259
    invoke-static {v0}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 1256
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid value found in byte-array: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1262
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 1265
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1270
    :cond_3
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 1273
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisDoubleArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1393
    const-string/jumbo p2, "num"

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1394
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1396
    new-array p2, p2, [D

    .line 1399
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 1401
    const-string/jumbo v4, "item"

    if-ne v1, v3, :cond_1

    .line 1402
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, p2, v2

    goto :goto_1

    .line 1405
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected item tag at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1408
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 1410
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1413
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1417
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    goto :goto_0

    .line 1420
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisIntArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    const-string/jumbo p2, "num"

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1296
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1298
    new-array p2, p2, [I

    .line 1301
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 1303
    const-string/jumbo v4, "item"

    if-ne v1, v3, :cond_1

    .line 1304
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v2

    goto :goto_1

    .line 1307
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected item tag at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1311
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 1313
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1316
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1321
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    goto :goto_0

    .line 1324
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1119
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static final readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1144
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/jobs/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1148
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 1151
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1154
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 1157
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Document ended before "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisLongArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    const-string/jumbo p2, "num"

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1347
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1349
    new-array p2, p2, [J

    .line 1352
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 1354
    const-string/jumbo v4, "item"

    if-ne v1, v3, :cond_1

    .line 1355
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, p2, v2

    goto :goto_1

    .line 1358
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected item tag at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1361
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 1363
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1366
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1370
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    goto :goto_0

    .line 1373
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1033
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils;->readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1056
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 1059
    invoke-static {p0, p2, p3, v1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1060
    aget-object v1, p2, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1062
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 1065
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1068
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 1071
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Document ended before "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readThisPrimitiveValueXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1672
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1673
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1674
    :cond_0
    const-string/jumbo v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1675
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1676
    :cond_1
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1677
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1678
    :cond_2
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1679
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1680
    :cond_3
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1681
    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2
.end method

.method public static final readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1180
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private static final readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1206
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1209
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/util/jobs/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object v1

    .line 1210
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1213
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v0

    .line 1216
    :cond_1
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1219
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 1222
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Document ended before "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1440
    const-string/jumbo p2, "num"

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1441
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1443
    new-array p2, p2, [Ljava/lang/String;

    .line 1446
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    .line 1448
    const-string/jumbo v4, "item"

    if-ne v1, v3, :cond_1

    .line 1449
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1450
    const-string/jumbo v1, "value"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    goto :goto_1

    .line 1452
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected item tag at: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1455
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p2

    .line 1457
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1460
    :cond_3
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag at: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1464
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    goto :goto_0

    .line 1467
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Document ended before "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end tag"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1557
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1564
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 1566
    :cond_0
    const-string/jumbo v1, "string"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p3

    if-eq p3, v7, :cond_5

    if-ne p3, v6, :cond_2

    .line 1571
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1572
    aput-object v0, p1, v8

    .line 1574
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1576
    :cond_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected end tag in <string>: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne p3, v5, :cond_3

    .line 1579
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-eq p3, v4, :cond_4

    goto :goto_0

    .line 1581
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected start tag in <string>: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1585
    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Unexpected end of document in <string>"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1587
    :cond_6
    invoke-static {p0, v2}, Lcom/android/internal/util/jobs/XmlUtils;->readThisPrimitiveValueXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1649
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p2

    if-eq p2, v7, :cond_b

    .line 1650
    const-string p3, ">: "

    if-ne p2, v6, :cond_8

    .line 1651
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1652
    aput-object v0, p1, v8

    return-object v1

    .line 1656
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected end tag in <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-eq p2, v5, :cond_a

    if-eq p2, v4, :cond_9

    goto :goto_1

    .line 1662
    :cond_9
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected start tag in <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1659
    :cond_a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected text in <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1660
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1666
    :cond_b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected end of document in <"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1589
    :cond_c
    const-string v1, "byte-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1590
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisByteArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object p0

    .line 1591
    aput-object v0, p1, v8

    return-object p0

    .line 1594
    :cond_d
    const-string v1, "int-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1595
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisIntArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object p0

    .line 1596
    aput-object v0, p1, v8

    return-object p0

    .line 1599
    :cond_e
    const-string/jumbo v1, "long-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1600
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisLongArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object p0

    .line 1601
    aput-object v0, p1, v8

    return-object p0

    .line 1604
    :cond_f
    const-string v1, "double-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1605
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisDoubleArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[D

    move-result-object p0

    .line 1606
    aput-object v0, p1, v8

    return-object p0

    .line 1609
    :cond_10
    const-string/jumbo v1, "string-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1610
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisStringArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1611
    aput-object v0, p1, v8

    return-object p0

    .line 1614
    :cond_11
    const-string v1, "boolean-array"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1615
    invoke-static {p0, v1, p1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisBooleanArrayXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object p0

    .line 1616
    aput-object v0, p1, v8

    return-object p0

    .line 1619
    :cond_12
    const-string/jumbo v1, "map"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1620
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    if-eqz p3, :cond_13

    .line 1622
    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->readThisArrayMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object p0

    goto :goto_2

    .line 1623
    :cond_13
    invoke-static {p0, v1, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->readThisMapXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;)Ljava/util/HashMap;

    move-result-object p0

    .line 1624
    :goto_2
    aput-object v0, p1, v8

    return-object p0

    .line 1627
    :cond_14
    const-string/jumbo v1, "list"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1628
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1629
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/internal/util/jobs/XmlUtils;->readThisListXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/ArrayList;

    move-result-object p0

    .line 1630
    aput-object v0, p1, v8

    return-object p0

    .line 1633
    :cond_15
    const-string/jumbo v1, "set"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1634
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 1635
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/internal/util/jobs/XmlUtils;->readThisSetXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/util/HashSet;

    move-result-object p0

    .line 1636
    aput-object v0, p1, v8

    return-object p0

    :cond_16
    if-eqz p2, :cond_17

    .line 1640
    invoke-interface {p2, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;->readThisUnknownObjectXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1641
    aput-object v0, p1, v8

    return-object p0

    .line 1644
    :cond_17
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown tag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 1874
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1875
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static final readValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1536
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1539
    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/XmlUtils;->readThisValueXml(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;Lcom/android/internal/util/jobs/XmlUtils$ReadMapCallback;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 1547
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1550
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Unexpected end of document"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1544
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1541
    :cond_3
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end tag at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 267
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static writeBitmapAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1938
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1939
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1940
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public static final writeBooleanArrayXml([ZLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 788
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 793
    :cond_0
    const-string v1, "boolean-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 795
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    :cond_1
    array-length p1, p0

    .line 799
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 802
    const-string/jumbo v3, "item"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 803
    const-string/jumbo v4, "value"

    aget-boolean v5, p0, v2

    invoke-interface {p2, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1867
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 1870
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1917
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1918
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1921
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

.method public static final writeByteArrayXml([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 596
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 597
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 601
    :cond_0
    const-string v1, "byte-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 603
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    :cond_1
    array-length p1, p0

    .line 607
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeDoubleArrayXml([DLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 710
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 715
    :cond_0
    const-string v1, "double-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 717
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    :cond_1
    array-length p1, p0

    .line 721
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 724
    const-string/jumbo v3, "item"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    const-string/jumbo v4, "value"

    aget-wide v5, p0, v2

    invoke-interface {p2, v0, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 726
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 729
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeFloatAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1837
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1838
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 1841
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeIntArrayXml([ILjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 632
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 637
    :cond_0
    const-string v1, "int-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 639
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    :cond_1
    array-length p1, p0

    .line 643
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 646
    const-string/jumbo v3, "item"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string/jumbo v4, "value"

    aget v5, p0, v2

    invoke-interface {p2, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 651
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1767
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1768
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 1771
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 429
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 430
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 431
    const-string p1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 432
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 433
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static final writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 539
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 544
    :cond_0
    const-string/jumbo v1, "list"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 546
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 552
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeLongArrayXml([JLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 671
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 672
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 676
    :cond_0
    const-string/jumbo v1, "long-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 678
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    :cond_1
    array-length p1, p0

    .line 682
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 685
    const-string/jumbo v3, "item"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    const-string/jumbo v4, "value"

    aget-wide v5, p0, v2

    invoke-interface {p2, v0, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 687
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1810
    instance-of v0, p0, Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1811
    check-cast p0, Lcom/android/modules/utils/TypedXmlSerializer;

    invoke-interface {p0, v1, p1, p2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 1814
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_1

    .line 512
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 513
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 515
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 517
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    .line 406
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 407
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 408
    const-string p1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 409
    invoke-static {p0, v1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 410
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 452
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V

    return-void
.end method

.method public static final writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 476
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 481
    :cond_0
    const-string/jumbo v1, "map"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 483
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/jobs/XmlUtils;->writeMapXml(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V

    .line 488
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeSetXml(Ljava/util/Set;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 562
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 567
    :cond_0
    const-string/jumbo v1, "set"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 569
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 573
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_0

    .line 576
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static final writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 749
    const-string/jumbo p0, "null"

    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    invoke-interface {p2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 754
    :cond_0
    const-string/jumbo v1, "string-array"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_1

    .line 756
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 759
    :cond_1
    array-length p1, p0

    .line 760
    const-string/jumbo v2, "num"

    invoke-interface {p2, v0, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 763
    const-string/jumbo v3, "item"

    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 764
    const-string/jumbo v4, "value"

    aget-object v5, p0, v2

    invoke-interface {p2, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 765
    invoke-interface {p2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_2
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1892
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public static writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1881
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 834
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V

    return-void
.end method

.method private static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 856
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 857
    const-string/jumbo p0, "null"

    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_0

    .line 859
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    :cond_0
    invoke-interface {p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 863
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    const-string/jumbo v3, "string"

    if-eqz v2, :cond_3

    .line 864
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_2

    .line 866
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 868
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 871
    :cond_3
    instance-of v2, p0, Ljava/lang/Integer;

    const-string/jumbo v4, "value"

    if-eqz v2, :cond_5

    .line 872
    const-string p3, "int"

    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_4

    .line 874
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    :cond_4
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 877
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 878
    :cond_5
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 879
    const-string/jumbo p3, "long"

    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_6

    .line 881
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    :cond_6
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v1, v4, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 885
    :cond_7
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_9

    .line 886
    const-string p3, "float"

    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_8

    .line 888
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    :cond_8
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p2, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 891
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 892
    :cond_9
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_b

    .line 893
    const-string p3, "double"

    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_a

    .line 895
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 897
    :cond_a
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-interface {p2, v1, v4, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 899
    :cond_b
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    .line 900
    const-string p3, "boolean"

    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_c

    .line 902
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 904
    :cond_c
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p2, v1, v4, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    invoke-interface {p2, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 906
    :cond_d
    instance-of v2, p0, [B

    if-eqz v2, :cond_e

    .line 907
    check-cast p0, [B

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeByteArrayXml([BLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 909
    :cond_e
    instance-of v2, p0, [I

    if-eqz v2, :cond_f

    .line 910
    check-cast p0, [I

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeIntArrayXml([ILjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 912
    :cond_f
    instance-of v2, p0, [J

    if-eqz v2, :cond_10

    .line 913
    check-cast p0, [J

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeLongArrayXml([JLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 915
    :cond_10
    instance-of v2, p0, [D

    if-eqz v2, :cond_11

    .line 916
    check-cast p0, [D

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeDoubleArrayXml([DLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 918
    :cond_11
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 919
    check-cast p0, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeStringArrayXml([Ljava/lang/String;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 921
    :cond_12
    instance-of v2, p0, [Z

    if-eqz v2, :cond_13

    .line 922
    check-cast p0, [Z

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeBooleanArrayXml([ZLjava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 924
    :cond_13
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_14

    .line 925
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 927
    :cond_14
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_15

    .line 928
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeListXml(Ljava/util/List;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 930
    :cond_15
    instance-of v2, p0, Ljava/util/Set;

    if-eqz v2, :cond_16

    .line 931
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeSetXml(Ljava/util/Set;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 933
    :cond_16
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_18

    .line 937
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_17

    .line 939
    invoke-interface {p2, v1, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 942
    invoke-interface {p2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :cond_18
    if-eqz p3, :cond_19

    .line 945
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$WriteMapCallback;->writeUnknownObject(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void

    .line 948
    :cond_19
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "writeValueXml: unable to write value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-static {p2}, Lcom/android/internal/util/jobs/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils;->writeValueXml(Ljava/lang/Object;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method
