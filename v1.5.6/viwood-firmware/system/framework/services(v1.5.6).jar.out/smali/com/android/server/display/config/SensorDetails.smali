.class public Lcom/android/server/display/config/SensorDetails;
.super Ljava/lang/Object;
.source "SensorDetails.java"


# instance fields
.field public featureFlag:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public refreshRate:Lcom/android/server/display/config/RefreshRateRange;

.field public supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;
    .locals 4

    .line 86
    new-instance v0, Lcom/android/server/display/config/SensorDetails;

    invoke-direct {v0}, Lcom/android/server/display/config/SensorDetails;-><init>()V

    const/4 v1, 0x0

    .line 88
    const-string v2, "featureFlag"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setFeatureFlag(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 95
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_6

    .line 97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string/jumbo v2, "refreshRate"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_0

    .line 110
    :cond_4
    const-string/jumbo v2, "supportedModes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    invoke-static {p0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V

    goto :goto_0

    .line 114
    :cond_5
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    return-object v0

    .line 118
    :cond_7
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "SensorDetails is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getFeatureFlag()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-object p0
.end method

.method public final getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setFeatureFlag(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setSupportedModes(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-void
.end method
