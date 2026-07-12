.class public final Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "DisallowInstallUnknownSourcesAdvancedProtectionHook.java"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 34
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 42
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 3

    .line 60
    const-string/jumbo v0, "no_install_unknown_sources_globally"

    const-string v1, "android.security.advancedprotection"

    const-string v2, "AdvancedProtectionDisallowInstallUnknown"

    if-eqz p1, :cond_0

    .line 61
    const-string p1, "Setting DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    const-string p1, "Clearing DISALLOW_INSTALL_UNKNOWN_SOURCES_GLOBALLY restriction"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/DisallowInstallUnknownSourcesAdvancedProtectionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->clearUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
