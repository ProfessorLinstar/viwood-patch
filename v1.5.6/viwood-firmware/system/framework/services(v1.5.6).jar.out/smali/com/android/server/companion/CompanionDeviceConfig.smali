.class public abstract Lcom/android/server/companion/CompanionDeviceConfig;
.super Ljava/lang/Object;
.source "CompanionDeviceConfig.java"


# direct methods
.method public static isEnabled(Ljava/lang/String;)Z
    .locals 4

    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 40
    :try_start_0
    const-string v2, "companion"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    throw p0
.end method
