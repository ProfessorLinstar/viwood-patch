.class public Lcom/android/server/display/config/BlockingZoneConfig;
.super Ljava/lang/Object;
.source "BlockingZoneConfig.java"


# instance fields
.field public blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

.field public defaultRefreshRate:Ljava/math/BigInteger;

.field public refreshRateThermalThrottlingId:Ljava/lang/String;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneConfig;
    .locals 4

    .line 70
    new-instance v0, Lcom/android/server/display/config/BlockingZoneConfig;

    invoke-direct {v0}, Lcom/android/server/display/config/BlockingZoneConfig;-><init>()V

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 74
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v3, :cond_5

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string/jumbo v2, "supportedModes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v2, "defaultRefreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/BlockingZoneConfig;->setDefaultRefreshRate(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string/jumbo v2, "refreshRateThermalThrottlingId"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setRefreshRateThermalThrottlingId(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v2, "blockingZoneThreshold"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-static {p0}, Lcom/android/server/display/config/BlockingZoneThreshold;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/BlockingZoneConfig;->setBlockingZoneThreshold(Lcom/android/server/display/config/BlockingZoneThreshold;)V

    goto :goto_0

    .line 93
    :cond_4
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    return-object v0

    .line 97
    :cond_6
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BlockingZoneConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    return-object p0
.end method

.method public final getDefaultRefreshRate()Ljava/math/BigInteger;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getRefreshRateThermalThrottlingId()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final setBlockingZoneThreshold(Lcom/android/server/display/config/BlockingZoneThreshold;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->blockingZoneThreshold:Lcom/android/server/display/config/BlockingZoneThreshold;

    return-void
.end method

.method public final setDefaultRefreshRate(Ljava/math/BigInteger;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->defaultRefreshRate:Ljava/math/BigInteger;

    return-void
.end method

.method public final setRefreshRateThermalThrottlingId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->refreshRateThermalThrottlingId:Ljava/lang/String;

    return-void
.end method

.method public final setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/server/display/config/BlockingZoneConfig;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method
