.class public Lcom/android/server/firewall/SenderPermissionFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPermissionFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 2

    .line 49
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 54
    new-instance p1, Lcom/android/server/firewall/SenderPermissionFilter;

    invoke-direct {p1, p0, v0}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter-IA;)V

    return-object p1

    .line 51
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Permission name must be specified."

    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0
.end method
