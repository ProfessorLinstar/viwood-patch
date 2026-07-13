.class public Lcom/android/server/firewall/StringFilter$IsNullFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# instance fields
.field public final mIsNull:Z


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 221
    iput-boolean p2, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 226
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/firewall/StringFilter$IsNullFilter;->mIsNull:Z

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    return v0
.end method
