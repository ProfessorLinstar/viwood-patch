.class public Lcom/android/server/security/advancedprotection/features/DisallowWepAdvancedProtectionProvider;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;
.source "DisallowWepAdvancedProtectionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatures(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 28
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 29
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getAvailableAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
