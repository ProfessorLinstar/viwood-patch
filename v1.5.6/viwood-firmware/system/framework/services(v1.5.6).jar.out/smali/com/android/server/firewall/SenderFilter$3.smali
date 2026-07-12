.class public Lcom/android/server/firewall/SenderFilter$3;
.super Ljava/lang/Object;
.source "SenderFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 0

    .line 79
    invoke-virtual {p1}, Lcom/android/server/firewall/IntentFirewall;->getPackageManager()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lcom/android/server/firewall/SenderFilter;->isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z

    move-result p0

    return p0
.end method
