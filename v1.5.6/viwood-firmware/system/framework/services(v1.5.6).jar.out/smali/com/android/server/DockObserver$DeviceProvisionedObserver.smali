.class public final Lcom/android/server/DockObserver$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "DockObserver.java"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;Landroid/os/Handler;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 462
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public isDeviceProvisioned()Z
    .locals 2

    .line 497
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$mupdateIfDockedLocked(Lcom/android/server/DockObserver;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 473
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 0

    .line 477
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    return-void
.end method

.method public final updateRegistration()V
    .locals 4

    .line 481
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 482
    iget-boolean v2, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    if-ne v1, v2, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v2, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v0, :cond_1

    .line 487
    const-string v0, "device_provisioned"

    .line 488
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    .line 487
    invoke-virtual {v2, v0, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 491
    :cond_1
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 493
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    return-void
.end method
