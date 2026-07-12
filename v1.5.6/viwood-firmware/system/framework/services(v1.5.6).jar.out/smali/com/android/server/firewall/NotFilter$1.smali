.class public Lcom/android/server/firewall/NotFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "NotFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 3

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 47
    :goto_0
    invoke-static {p1, p0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<not> tag can only contain a single child filter."

    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    .line 56
    :cond_1
    new-instance p0, Lcom/android/server/firewall/NotFilter;

    invoke-direct {p0, v1, v0}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter-IA;)V

    return-object p0
.end method
