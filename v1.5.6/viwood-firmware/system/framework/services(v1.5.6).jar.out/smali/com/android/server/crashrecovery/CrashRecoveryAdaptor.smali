.class public abstract Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;
.super Ljava/lang/Object;
.source "CrashRecoveryAdaptor.java"


# direct methods
.method public static initializeCrashrecoveryModuleService(Lcom/android/server/SystemServiceManager;)V
    .locals 1

    .line 40
    const-string v0, "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    return-void
.end method

.method public static rescuePartyOnSettingsProviderPublished(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
.end method
