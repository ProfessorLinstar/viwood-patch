.class public final Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "DisallowCellular2GAdvancedProtectionHook.java"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 34
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 41
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 3

    .line 60
    const-string/jumbo v0, "no_cellular_2g"

    const-string v1, "android.security.advancedprotection"

    const-string v2, "AdvancedProtectionDisallowCellular2G"

    if-eqz p1, :cond_0

    .line 61
    const-string p1, "Setting DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    const-string p1, "Clearing DISALLOW_CELLULAR_2G_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowCellular2GAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
