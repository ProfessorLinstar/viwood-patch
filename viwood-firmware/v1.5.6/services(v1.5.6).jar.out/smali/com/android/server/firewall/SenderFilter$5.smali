.class public Lcom/android/server/firewall/SenderFilter$5;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    move-object p0, p1

    const/4 p1, 0x0

    move p2, p5

    const/4 p5, 0x0

    move p3, p4

    move p4, p7

    .line 100
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/firewall/IntentFirewall;->checkComponentPermission(Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method
