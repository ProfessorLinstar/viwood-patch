.class public Lcom/android/server/display/config/RefreshRateZone;
.super Ljava/lang/Object;
.source "RefreshRateZone.java"


# instance fields
.field public id:Ljava/lang/String;

.field public refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateZone;
    .locals 4

    .line 38
    new-instance v0, Lcom/android/server/display/config/RefreshRateZone;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateZone;-><init>()V

    const/4 v1, 0x0

    .line 40
    const-string v2, "id"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateZone;->setId(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 47
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 49
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "refreshRateRange"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/RefreshRateZone;->setRefreshRateRange(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 59
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateZone is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateZone;->id:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshRateRange(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateZone;->refreshRateRange:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method
