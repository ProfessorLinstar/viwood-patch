.class public Lcom/android/internal/util/jobs/XmlUtils$ForcedTypedXmlSerializer;
.super Lcom/android/internal/util/XmlSerializerWrapper;
.source "XmlUtils.java"

# interfaces
.implements Lcom/android/modules/utils/TypedXmlSerializer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/util/XmlSerializerWrapper;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method


# virtual methods
.method public attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 122
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 74
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 116
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 110
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 86
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    const/16 v0, 0x10

    .line 92
    invoke-static {p3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0

    .line 98
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1

    const/16 v0, 0x10

    .line 104
    invoke-static {p3, p4, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/XmlSerializerWrapper;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method
