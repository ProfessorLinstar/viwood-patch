.class public Lcom/android/server/display/config/HbmTiming;
.super Ljava/lang/Object;
.source "HbmTiming.java"


# instance fields
.field public timeMaxSecs_all:Ljava/math/BigInteger;

.field public timeMinSecs_all:Ljava/math/BigInteger;

.field public timeWindowSecs_all:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;
    .locals 4

    .line 54
    new-instance v0, Lcom/android/server/display/config/HbmTiming;

    invoke-direct {v0}, Lcom/android/server/display/config/HbmTiming;-><init>()V

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_4

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "timeWindowSecs"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HbmTiming;->setTimeWindowSecs_all(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v2, "timeMaxSecs"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HbmTiming;->setTimeMaxSecs_all(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v2, "timeMinSecs"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HbmTiming;->setTimeMinSecs_all(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    return-object v0

    .line 79
    :cond_5
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "HbmTiming is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getTimeMaxSecs_all()Ljava/math/BigInteger;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getTimeMinSecs_all()Ljava/math/BigInteger;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getTimeWindowSecs_all()Ljava/math/BigInteger;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final setTimeMaxSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeMaxSecs_all:Ljava/math/BigInteger;

    return-void
.end method

.method public final setTimeMinSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeMinSecs_all:Ljava/math/BigInteger;

    return-void
.end method

.method public final setTimeWindowSecs_all(Ljava/math/BigInteger;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/HbmTiming;->timeWindowSecs_all:Ljava/math/BigInteger;

    return-void
.end method
