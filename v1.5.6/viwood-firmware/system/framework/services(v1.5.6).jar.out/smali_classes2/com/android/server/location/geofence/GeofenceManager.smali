.class public Lcom/android/server/location/geofence/GeofenceManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GeofenceManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastLocation:Landroid/location/Location;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public mLocationManager:Landroid/location/LocationManager;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLock:Ljava/lang/Object;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field public final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field public final mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$-J0nsuo1tUolwx2C_cOjUqlkAqg(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 0

    .line 546
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$6B2TnnJ2FfvtKiOxRuTgN2A6X3I(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 0

    .line 541
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$HGcZosAXD2bXULHzGU5VaOeZGlg(Ljava/lang/String;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 0

    .line 554
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TU3whMVF-lZ5HtrUkGLYo5Y-tJg(Landroid/app/PendingIntent;Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;)Z
    .locals 0

    .line 370
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eLb-cdUKD6a-o71OACxqdGAlnZk(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 0

    .line 558
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$szI4FFLvmc6gmYTYGQ-8D9ebucY(Landroid/location/Location;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 0

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wu2d6VhxLk3RBfv5LmsUosV1O2A(ILcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 0

    .line 550
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 289
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    .line 293
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 294
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 296
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 299
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceManager$1;-><init>(Lcom/android/server/location/geofence/GeofenceManager;)V

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 325
    const-string v0, "GeofencingService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 326
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 327
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 328
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 329
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/geofence/GeofenceManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method


# virtual methods
.method public addGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V

    .line 352
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-static {p2}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v0, p3, p4, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    :try_start_0
    new-instance p4, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    invoke-direct {p4, p2, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;-><init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, p4, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw p0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 528
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    .line 521
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getLocationManager()Landroid/location/LocationManager;
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/location/LocationManager;

    .line 336
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 339
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationManager:Landroid/location/LocationManager;

    monitor-exit v0

    return-object p0

    .line 340
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isActive(Landroid/location/util/identity/CallerIdentity;)Z
    .locals 3

    .line 382
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/location/injector/UserInfoHelper;->isVisibleUserId(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 393
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    .line 394
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public isActive(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z
    .locals 1

    .line 378
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->isPermitted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->isActive(Landroid/location/util/identity/CallerIdentity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .locals 0

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->isActive(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)Z

    move-result p0

    return p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/LocationRequest;
    .locals 11

    .line 466
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 472
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    .line 473
    invoke-virtual {v8}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getGeofence()Landroid/location/Geofence;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Landroid/location/Geofence;->isExpired(J)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v8, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getDistanceToBoundary(Landroid/location/Location;)D

    move-result-wide v8

    cmpg-double v10, v8, v6

    if-gez v10, :cond_0

    move-wide v6, v8

    goto :goto_0

    .line 488
    :cond_2
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-gez p1, :cond_3

    .line 489
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 491
    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v0

    .line 490
    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    const-wide v0, 0x415b774000000000L    # 7200000.0

    .line 489
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    goto :goto_1

    .line 494
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottleProximityAlertIntervalMs()J

    move-result-wide p0

    .line 497
    :goto_1
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 p0, 0x0

    .line 498
    invoke-virtual {v0, p0, p1}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 499
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p0, v3}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    move-result-object p0

    .line 501
    invoke-virtual {p0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/LocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda0;-><init>(Landroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void

    :catchall_0
    move-exception p0

    .line 509
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLocationEnabledChanged(I)V
    .locals 1

    .line 546
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPackageBlacklistChanged(I)V
    .locals 1

    .line 550
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPermissionsChanged(I)V
    .locals 1

    .line 558
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1

    .line 554
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onRegister()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 406
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    return-void
.end method

.method public onRegistrationAdded(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .locals 11

    .line 422
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 425
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getGeofence()Landroid/location/Geofence;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 422
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->onRegistrationAdded(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-void
.end method

.method public onRegistrationRemoved(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V
    .locals 11

    .line 436
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 439
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {p2}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getGeofence()Landroid/location/Geofence;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 436
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    check-cast p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->onRegistrationRemoved(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-void
.end method

.method public onUnregister()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserInfoHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    return-void
.end method

.method public onUserChanged(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 541
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;

    invoke-direct {p2, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public registerWithService(Landroid/location/LocationRequest;Ljava/util/Collection;)Z
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object p2

    const-string v0, "fused"

    .line 452
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 451
    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 61
    check-cast p1, Landroid/location/LocationRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;->registerWithService(Landroid/location/LocationRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)V
    .locals 3

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    :try_start_0
    new-instance v2, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/location/geofence/GeofenceManager$$ExternalSyntheticLambda4;-><init>(Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    throw p0
.end method

.method public unregisterWithService()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v1, 0x0

    .line 460
    iput-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager;->mLastLocation:Landroid/location/Location;

    .line 461
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
