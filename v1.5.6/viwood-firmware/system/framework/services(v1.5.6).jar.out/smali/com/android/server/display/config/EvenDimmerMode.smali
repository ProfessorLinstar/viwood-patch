.class public Lcom/android/server/display/config/EvenDimmerMode;
.super Ljava/lang/Object;
.source "EvenDimmerMode.java"


# instance fields
.field public brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

.field public enabled:Ljava/lang/Boolean;

.field public luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

.field public transitionPoint:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/EvenDimmerMode;
    .locals 4

    .line 73
    new-instance v0, Lcom/android/server/display/config/EvenDimmerMode;

    invoke-direct {v0}, Lcom/android/server/display/config/EvenDimmerMode;-><init>()V

    const/4 v1, 0x0

    .line 75
    const-string v2, "enabled"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/EvenDimmerMode;->setEnabled(Z)V

    .line 80
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 82
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 84
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "transitionPoint"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/EvenDimmerMode;->setTransitionPoint(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 90
    :cond_2
    const-string v2, "brightnessMapping"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-static {p0}, Lcom/android/server/display/config/ComprehensiveBrightnessMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/EvenDimmerMode;->setBrightnessMapping(Lcom/android/server/display/config/ComprehensiveBrightnessMap;)V

    goto :goto_0

    .line 93
    :cond_3
    const-string/jumbo v2, "luxToMinimumNitsMap"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/EvenDimmerMode;->setLuxToMinimumNitsMap(Lcom/android/server/display/config/NitsMap;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    return-object v0

    .line 101
    :cond_6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "EvenDimmerMode is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getBrightnessMapping()Lcom/android/server/display/config/ComprehensiveBrightnessMap;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    return-object p0
.end method

.method public getEnabled()Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getLuxToMinimumNitsMap()Lcom/android/server/display/config/NitsMap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    return-object p0
.end method

.method public getTransitionPoint()Ljava/math/BigDecimal;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setBrightnessMapping(Lcom/android/server/display/config/ComprehensiveBrightnessMap;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/display/config/EvenDimmerMode;->brightnessMapping:Lcom/android/server/display/config/ComprehensiveBrightnessMap;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/EvenDimmerMode;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLuxToMinimumNitsMap(Lcom/android/server/display/config/NitsMap;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/server/display/config/EvenDimmerMode;->luxToMinimumNitsMap:Lcom/android/server/display/config/NitsMap;

    return-void
.end method

.method public setTransitionPoint(Ljava/math/BigDecimal;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/server/display/config/EvenDimmerMode;->transitionPoint:Ljava/math/BigDecimal;

    return-void
.end method
