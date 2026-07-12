.class public abstract Lcom/android/server/firewall/FilterList;
.super Ljava/lang/Object;
.source "FilterList.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# instance fields
.field public final children:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object p1

    .line 39
    iget-object p0, p0, Lcom/android/server/firewall/FilterList;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .locals 2

    .line 30
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 31
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/FilterList;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
