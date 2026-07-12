.class public Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 4

    .line 48
    const-string/jumbo p0, "type"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 53
    const-string/jumbo v1, "system"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-$$Nest$sfgetSYSTEM()Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    const-string/jumbo v1, "signature"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-$$Nest$sfgetSIGNATURE()Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1
    const-string/jumbo v1, "system|signature"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-$$Nest$sfgetSYSTEM_OR_SIGNATURE()Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 59
    :cond_2
    const-string/jumbo v1, "userId"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-$$Nest$sfgetUSER_ID()Lcom/android/server/firewall/Filter;

    move-result-object p0

    return-object p0

    .line 62
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type attribute for <sender>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "type attribute must be specified for <sender>"

    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0
.end method
