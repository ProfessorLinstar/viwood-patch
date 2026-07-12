.class public final Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;
.super Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;
.source "MemoryTaggingExtensionHook.java"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/advancedprotection/features/AdvancedProtectionHook;-><init>(Landroid/content/Context;Z)V

    .line 38
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionFeature;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/security/advancedprotection/AdvancedProtectionFeature;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    .line 45
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-virtual {p0, p2}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->onAdvancedProtectionChanged(Z)V

    return-void
.end method


# virtual methods
.method public getFeature()Landroid/security/advancedprotection/AdvancedProtectionFeature;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mFeature:Landroid/security/advancedprotection/AdvancedProtectionFeature;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 57
    const-string/jumbo p0, "ro.arm64.memtag.bootctl_settings_toggle"

    const/4 v0, 0x0

    .line 58
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 57
    const-string/jumbo v0, "ro.arm64.memtag.bootctl_device_policy_manager"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onAdvancedProtectionChanged(Z)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->isAvailable()Z

    move-result v0

    const-string v1, "AdvancedProtectionMTE"

    if-nez v0, :cond_0

    .line 64
    const-string p0, "MTE unavailable on device, skipping."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting MTE state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/advancedprotection/features/MemoryTaggingExtensionHook;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "android.security.advancedprotection"

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->setMtePolicy(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 78
    const-string p1, "Setting MTE policy unsupported"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
