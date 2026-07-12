.class public abstract Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;
.super Ljava/lang/Object;
.source "ActivitySecurityModelFeatureFlags.java"


# static fields
.field public static sAsmRestrictionsEnabled:I

.field public static sAsmToastsEnabled:I


# direct methods
.method public static synthetic $r8$lambda$QiVgC5LLKqJS3j_2a23AqYQ8xhE(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 65
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->updateFromDeviceConfig()V

    return-void
.end method

.method public static asmRestrictionsEnabledForAll()Z
    .locals 2

    .line 87
    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static initialize(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 63
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->updateFromDeviceConfig()V

    .line 64
    new-instance v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "window_manager"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static shouldRestrictActivitySwitch(I)Z
    .locals 2

    const-wide/32 v0, 0xdbe868a

    .line 78
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-nez p0, :cond_1

    .line 79
    invoke-static {}, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->asmRestrictionsEnabledForAll()Z

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

.method public static shouldShowToast(I)Z
    .locals 3

    .line 70
    sget v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-wide/32 v0, 0xdbe868a

    .line 72
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static updateFromDeviceConfig()V
    .locals 3

    .line 91
    const-string v0, "window_manager"

    const-string v1, "ActivitySecurity__asm_toasts_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmToastsEnabled:I

    .line 93
    const-string v1, "ActivitySecurity__asm_restrictions_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivitySecurityModelFeatureFlags;->sAsmRestrictionsEnabled:I

    return-void
.end method
