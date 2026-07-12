.class public Lcom/android/server/firewall/SenderFilter$4;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 87
    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z

    move-result p0

    if-nez p0, :cond_1

    .line 88
    invoke-virtual {p1, p4, p7}, Lcom/android/server/firewall/IntentFirewall;->signaturesMatch(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
