.class public Lcom/android/server/display/config/NitsMap;
.super Ljava/lang/Object;
.source "NitsMap.java"


# instance fields
.field public interpolation:Ljava/lang/String;

.field public point:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;
    .locals 4

    .line 30
    new-instance v0, Lcom/android/server/display/config/NitsMap;

    invoke-direct {v0}, Lcom/android/server/display/config/NitsMap;-><init>()V

    const/4 v1, 0x0

    .line 32
    const-string v2, "interpolation"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/NitsMap;->setInterpolation(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 39
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 41
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    invoke-static {p0}, Lcom/android/server/display/config/Point;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Point;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    return-object v0

    .line 51
    :cond_4
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "NitsMap is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInterpolation()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    return-object p0
.end method

.method public final getPoint()Ljava/util/List;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/NitsMap;->point:Ljava/util/List;

    return-object p0
.end method

.method public setInterpolation(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/android/server/display/config/NitsMap;->interpolation:Ljava/lang/String;

    return-void
.end method
