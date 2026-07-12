.class public Lcom/android/server/display/config/PowerThrottlingConfig;
.super Ljava/lang/Object;
.source "PowerThrottlingConfig.java"


# instance fields
.field public brightnessLowestCapAllowed:Ljava/math/BigDecimal;

.field public customAnimationRate:Ljava/math/BigDecimal;

.field public pollingWindowMaxMillis:Ljava/math/BigInteger;

.field public pollingWindowMinMillis:Ljava/math/BigInteger;

.field public powerThrottlingMap:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/PowerThrottlingConfig;
    .locals 4

    .line 78
    new-instance v0, Lcom/android/server/display/config/PowerThrottlingConfig;

    invoke-direct {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;-><init>()V

    .line 80
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 82
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_6

    .line 84
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "brightnessLowestCapAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/PowerThrottlingConfig;->setBrightnessLowestCapAllowed(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "customAnimationRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/PowerThrottlingConfig;->setCustomAnimationRate(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string/jumbo v2, "pollingWindowMaxMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/PowerThrottlingConfig;->setPollingWindowMaxMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string/jumbo v2, "pollingWindowMinMillis"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/PowerThrottlingConfig;->setPollingWindowMinMillis(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 102
    :cond_4
    const-string/jumbo v2, "powerThrottlingMap"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    invoke-static {p0}, Lcom/android/server/display/config/PowerThrottlingMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/PowerThrottlingMap;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPowerThrottlingMap()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    return-object v0

    .line 110
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "PowerThrottlingConfig is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrightnessLowestCapAllowed()Ljava/math/BigDecimal;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getCustomAnimationRate()Ljava/math/BigDecimal;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->customAnimationRate:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final getPollingWindowMaxMillis()Ljava/math/BigInteger;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMaxMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getPollingWindowMinMillis()Ljava/math/BigInteger;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMinMillis:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getPowerThrottlingMap()Ljava/util/List;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->powerThrottlingMap:Ljava/util/List;

    return-object p0
.end method

.method public final setBrightnessLowestCapAllowed(Ljava/math/BigDecimal;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->brightnessLowestCapAllowed:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setCustomAnimationRate(Ljava/math/BigDecimal;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->customAnimationRate:Ljava/math/BigDecimal;

    return-void
.end method

.method public final setPollingWindowMaxMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMaxMillis:Ljava/math/BigInteger;

    return-void
.end method

.method public final setPollingWindowMinMillis(Ljava/math/BigInteger;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/display/config/PowerThrottlingConfig;->pollingWindowMinMillis:Ljava/math/BigInteger;

    return-void
.end method
