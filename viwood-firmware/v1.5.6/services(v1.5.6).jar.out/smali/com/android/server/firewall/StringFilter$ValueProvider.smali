.class public abstract Lcom/android/server/firewall/StringFilter$ValueProvider;
.super Lcom/android/server/firewall/FilterFactory;
.source "StringFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 0

    .line 134
    invoke-static {p0, p1}, Lcom/android/server/firewall/StringFilter;->readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;

    move-result-object p0

    return-object p0
.end method
