.class public Lcom/android/server/firewall/StringFilter$ContainsFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "StringFilter.java"


# instance fields
.field public final mFilterValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter-IA;)V

    .line 160
    iput-object p2, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public matchesValue(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/server/firewall/StringFilter$ContainsFilter;->mFilterValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
