.class public Lcom/android/server/firewall/OrFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "OrFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 0

    .line 43
    new-instance p0, Lcom/android/server/firewall/OrFilter;

    invoke-direct {p0}, Lcom/android/server/firewall/OrFilter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    move-result-object p0

    return-object p0
.end method
