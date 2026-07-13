.class public Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# instance fields
.field public mCachedUserId:I

.field public mCachedValue:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 481
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 482
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    .line 483
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    const/16 p1, -0x2710

    .line 485
    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getValueForUser(I)Ljava/util/List;
    .locals 4

    monitor-enter p0

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    .line 496
    iget v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-eq p1, v1, :cond_3

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 499
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 504
    :cond_1
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    .line 512
    iput-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_2
    move-object v0, v2

    goto :goto_4

    .line 507
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    :cond_3
    :goto_4
    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized invalidateForUser(I)V
    .locals 1

    monitor-enter p0

    .line 520
    :try_start_0
    iget v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    if-ne v0, p1, :cond_0

    const/16 p1, -0x2710

    .line 521
    iput p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedUserId:I

    const/4 p1, 0x0

    .line 522
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mCachedValue:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 524
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 528
    invoke-virtual {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->invalidateForUser(I)V

    .line 529
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->onChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public register()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
