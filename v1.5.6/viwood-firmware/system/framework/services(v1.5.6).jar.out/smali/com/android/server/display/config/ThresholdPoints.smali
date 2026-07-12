.class public Lcom/android/server/display/config/ThresholdPoints;
.super Ljava/lang/Object;
.source "ThresholdPoints.java"


# instance fields
.field public brightnessThresholdPoint:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThresholdPoints;
    .locals 4

    .line 14
    new-instance v0, Lcom/android/server/display/config/ThresholdPoints;

    invoke-direct {v0}, Lcom/android/server/display/config/ThresholdPoints;-><init>()V

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string v2, "brightnessThresholdPoint"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {p0}, Lcom/android/server/display/config/ThresholdPoint;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/ThresholdPoint;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/android/server/display/config/ThresholdPoints;->getBrightnessThresholdPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    return-object v0

    .line 30
    :cond_3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "ThresholdPoints is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getBrightnessThresholdPoint()Ljava/util/List;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/ThresholdPoints;->brightnessThresholdPoint:Ljava/util/List;

    return-object p0
.end method
