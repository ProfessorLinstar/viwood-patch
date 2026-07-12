.class public Lcom/android/server/location/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;


# static fields
.field public static final D:Z

.field public static final IS_USER_BUILD:Z

.field public static final USERDEBUG_TEL_PROP:Z

.field public static sMtkLocationManagerService:Ljava/lang/Object;

.field public static sMtkLocationManagerServiceClass:Ljava/lang/Class;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

.field public final mDeprecatedGnssBatchingLock:Ljava/lang/Object;

.field public mExtraLocationControllerPackage:Ljava/lang/String;

.field public mExtraLocationControllerPackageEnabled:Z

.field public mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

.field public final mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

.field public volatile mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public final mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

.field public mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

.field public mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

.field public final mLock:Ljava/lang/Object;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

.field public final mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static synthetic $r8$lambda$4pXLUGdc1ZZk6PGd2_mM71U3nsY(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6MROPOjvUM8LNGJwGMKCH7A0R0s(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$4(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6c2pN5bSGWwMbCJXYQGSIqoMNSk(Lcom/android/server/location/LocationManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->onLocationModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AiCwtK63NDZRVzb1I4CEK23SDyw(Ljava/lang/String;)V
    .locals 0

    .line 925
    invoke-static {p0}, Lcom/android/server/location/LocationManagerService;->mtkShowNlpNotInstalledToast(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F5OljuzcjvDlFwBQ9pGN3AoBIp8(Lcom/android/server/location/LocationManagerService;I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$3(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TAWQqGQwAPdcArzax5yh_01u9oM(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->onEmergencyStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZCbzyxB3CueH3y4nKqrLrxUVRZk(Lcom/android/server/location/LocationManagerService;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8M_HdyVjo8K58Kq92prpn865fg(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eyTQ4ijUbfA4AoGXfSy3i0Mr-d8(Lcom/android/server/location/LocationManagerService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$new$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwp4RhvxNBiY1jhPHD3YdojaxUw(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .locals 0

    .line 1757
    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u7ExkEE4CuoKyaf8vfPjWyea6KA(ZLcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .locals 0

    .line 1453
    invoke-virtual {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;->withAdasGnssLocationEnabled(Z)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ujQuQQ3Bc3ydTqqn2V1w-z0TnO4(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$wW5ICeW30Jgjh76QrlNque0Az30(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V
    .locals 0

    .line 1764
    invoke-interface {p0, p1, p2}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogEmergencyState(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogLocationEnabledState(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 263
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "userdebug"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    sput-boolean v1, Lcom/android/server/location/LocationManagerService;->IS_USER_BUILD:Z

    .line 267
    const-string/jumbo v5, "persist.vendor.log.tel_dbg"

    .line 268
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/android/server/location/LocationManagerService;->USERDEBUG_TEL_PROP:Z

    if-eqz v1, :cond_3

    .line 271
    const-string v1, "LocationManagerService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    sput-boolean v3, Lcom/android/server/location/LocationManagerService;->D:Z

    const/4 v0, 0x0

    .line 2072
    sput-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerServiceClass:Ljava/lang/Class;

    .line 2073
    sput-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerService:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V
    .locals 2

    .line 312
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 286
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    .line 289
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 291
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    .line 306
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 313
    const-string v0, "LocationService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 315
    new-instance v0, Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/location/LocationManagerService$LocalService;-><init>(Lcom/android/server/location/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    .line 316
    const-class v1, Landroid/location/LocationManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 318
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/geofence/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    .line 320
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 322
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 324
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 327
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 329
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 334
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/EmergencyHelper;->addOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V

    .line 339
    new-instance v0, Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/provider/PassiveLocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    .line 340
    new-instance p2, Lcom/android/server/location/provider/PassiveLocationProvider;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/PassiveLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 346
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    .line 348
    new-instance p2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    .line 351
    new-instance p2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-interface {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;->setLocationExtraPackagesProvider(Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;)V

    return-void
.end method

.method public static initMtkLocationManagerService(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V
    .locals 4

    .line 2078
    const-string p1, "LocationManagerService"

    const-string v0, "com.mediatek.location.MtkLocationExt$LocationManagerService"

    .line 2081
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerServiceClass:Ljava/lang/Class;

    .line 2082
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerServiceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_0
    sget-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerServiceClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2084
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Handler;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2087
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerService:Ljava/lang/Object;

    .line 2091
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sMtkLocationManagerService = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerService:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2093
    :catch_0
    const-string p0, "Failed to init sMtkLocationManagerService!"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static mtkBuildLocationInfo(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    .line 2111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2112
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2113
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2115
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " hAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2117
    :cond_0
    const-string v1, " hAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2119
    :goto_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2120
    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2123
    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2125
    :cond_2
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2128
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2129
    const-string v1, " etAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2132
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2133
    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2135
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2136
    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2138
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2139
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " vAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2141
    :cond_6
    const-string v1, " vAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    :goto_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2144
    invoke-virtual {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " sAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2146
    :cond_7
    const-string v1, " sAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    :goto_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2149
    invoke-virtual {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " bAcc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2151
    :cond_8
    const-string v1, " bAcc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2153
    :goto_4
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 2154
    const-string p0, " mock"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/16 p0, 0x5d

    .line 2156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static mtkShowNlpNotInstalledToast(Ljava/lang/String;)V
    .locals 5

    .line 2099
    :try_start_0
    sget-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2101
    sget-object v0, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "showNlpNotInstalledToast"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2103
    sget-object v1, Lcom/android/server/location/LocationManagerService;->sMtkLocationManagerService:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2106
    const-string v0, "LocationManagerService"

    const-string v1, "Failed to call showNlpNotInstalledToast "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1254
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1237
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1307
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 395
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V

    if-eqz p2, :cond_2

    .line 399
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eq p1, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 403
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_enable_stationary_throttle"

    .line 403
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 417
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 419
    :cond_2
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 2

    .line 1270
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener_enforcePermission()V

    .line 1271
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1272
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1548
    invoke-static {p4, p5}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 1549
    iget-object p5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p5}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p5

    const/16 v0, 0x3a

    invoke-virtual {p5, v0, p4}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 1553
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    .line 1554
    new-instance p1, Lcom/android/server/location/provider/MockLocationProvider;

    new-instance p5, Landroid/util/ArraySet;

    invoke-direct {p5, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p4, p5}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    return-void
.end method

.method public calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;
    .locals 5

    .line 1815
    new-instance v0, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v0}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 1816
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1817
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    .line 1818
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1821
    :cond_0
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    .line 1825
    :cond_1
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-virtual {v0, v3, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    .line 1826
    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 1827
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1831
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider has specified a null attribution tag and a non-empty set of extra attribution tags - dropping the null attribution tag"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1828
    :cond_3
    :goto_1
    iget-object v1, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 1829
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1828
    invoke-virtual {v0, v1, v2}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_0

    .line 1836
    :cond_4
    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1628
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1632
    :cond_0
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1634
    array-length p2, p3

    const/4 v1, 0x0

    if-lez p2, :cond_3

    .line 1635
    aget-object p2, p3, v1

    invoke-virtual {p0, p2}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1637
    const-string p0, "Provider:"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1639
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1642
    const-string p0, "Event Log:"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1644
    sget-object p0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    new-instance p1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 1645
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1649
    :cond_1
    const-string p2, "--gnssmetrics"

    aget-object v2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1650
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz p2, :cond_2

    .line 1651
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    .line 1657
    :cond_3
    const-string p2, "Location Manager State:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1660
    const-string p2, "User Info:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1662
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/injector/UserInfoHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1665
    const-string p2, "Location Settings:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1667
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/injector/SettingsHelper;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1668
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/settings/LocationSettings;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1671
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1672
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location Controller Extra Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    iget-boolean v3, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v3, :cond_4

    const-string v3, " [enabled]"

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 1676
    :cond_4
    const-string v3, " [disabled]"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1673
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1678
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    const-string p2, "Location Providers:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1682
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1683
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    .line 1685
    :cond_6
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1687
    const-string p2, "Historical Aggregate Location Provider Data:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1689
    sget-object p2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 1690
    invoke-virtual {p2}, Lcom/android/server/location/eventlog/LocationEventLog;->copyAggregateStats()Landroid/util/ArrayMap;

    move-result-object p2

    move v2, v1

    .line 1691
    :goto_3
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1692
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    const-string v3, ":"

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1696
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    move v4, v1

    .line 1697
    :goto_4
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 1698
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1699
    const-string v5, ": "

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 1701
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1703
    :cond_7
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1705
    :cond_8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1707
    const-string p2, "Historical Aggregate Gnss Measurement Provider Data:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1710
    sget-object p2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {p2}, Lcom/android/server/location/eventlog/LocationEventLog;->copyGnssMeasurementAggregateStats()Landroid/util/ArrayMap;

    move-result-object p2

    .line 1711
    :goto_5
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 1712
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1713
    const-string v2, ": "

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1714
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;

    invoke-virtual {v2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementAggregateStats;->updateTotals()V

    .line 1715
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1717
    :cond_9
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1719
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz p2, :cond_a

    .line 1720
    const-string p2, "GNSS Manager:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1722
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/server/location/gnss/GnssManagerService;->dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1726
    :cond_a
    const-string p2, "Geofence Manager:"

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1728
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1731
    const-string p0, "Event Log:"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1733
    sget-object p0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    new-instance p1, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->iterate(Ljava/util/function/Consumer;)V

    .line 1734
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1678
    :goto_6
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public flushGnssBatch()V
    .locals 4

    .line 732
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch_enforcePermission()V

    .line 734
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1

    .line 740
    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/location/LocationManagerService;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 742
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 3

    .line 1528
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1530
    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1529
    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ForwardGeocodeRequest;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1533
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz p0, :cond_1

    .line 1534
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 1537
    :try_start_0
    invoke-interface {p2, p0}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getAdasAllowlist()Landroid/os/PackageTagsList;
    .locals 0

    .line 844
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 771
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 772
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 1

    .line 833
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getBackgroundThrottlePackageWhitelist()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 810
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    .line 811
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 812
    invoke-virtual {p0, v2, p2}, Lcom/android/server/location/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 814
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 817
    const-string p0, "fused"

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 818
    const-string p0, "fused"

    return-object p0

    .line 819
    :cond_1
    const-string p0, "gps"

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 820
    const-string p0, "gps"

    return-object p0

    .line 821
    :cond_2
    const-string/jumbo p0, "network"

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 822
    const-string/jumbo p0, "network"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    .line 824
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v2

    .line 814
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 4

    .line 852
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 854
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 855
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    .line 854
    invoke-static {p6, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p6

    const/4 v0, 0x1

    if-nez p6, :cond_1

    .line 858
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 859
    invoke-static {v1, p6, v0}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 p6, 0x2

    .line 871
    :cond_1
    :goto_0
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move p5, v3

    goto :goto_2

    :cond_3
    :goto_1
    move p5, v0

    :goto_2
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 873
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v3

    .line 876
    :goto_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider \""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 879
    invoke-virtual {p0, p2, p4, p6, p3}, Lcom/android/server/location/provider/LocationProviderManager;->getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method public getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 1

    .line 1404
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1406
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGnssAntennaInfos()Ljava/util/List;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGnssBatchSize()I
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result p0

    return p0
.end method

.method public getGnssCapabilities()Landroid/location/GnssCapabilities;
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    new-instance p0, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {p0}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object p0

    return-object p0

    .line 1295
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 0

    .line 1171
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$LocalService;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object p0

    return-object p0
.end method

.method public getGnssYearOfHardware()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssYearOfHardware()I

    move-result p0

    return p0
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    return-object p0
.end method

.method public getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .line 1100
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1101
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 1102
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    .line 1101
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    .line 1106
    invoke-static {v2, v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1118
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1120
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/LocationManagerService;->validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object p2

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1127
    :cond_4
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager;

    .line 363
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method public final getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 377
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 382
    :cond_1
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 385
    monitor-exit v0

    return-object v1

    .line 386
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1377
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->getProviderPackages_enforcePermission()V

    .line 1379
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1381
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1384
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1386
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 1389
    :cond_1
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .locals 3

    .line 1345
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1346
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object p0

    return-object p0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 5

    .line 781
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->checkCallingOrSelfLocationPermission(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 788
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/provider/LocationProviderManager;

    .line 789
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 790
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    .line 791
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 796
    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager;->getProperties()Landroid/location/provider/ProviderProperties;

    move-result-object v2

    .line 795
    invoke-static {v3, v2, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 799
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 802
    :cond_4
    monitor-exit v0

    return-object v1

    .line 803
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    .line 1621
    new-instance v0, Lcom/android/server/location/LocationShellCommand;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/location/LocationShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V

    .line 1622
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 1621
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasProvider(Ljava/lang/String;)Z
    .locals 0

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1288
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    :cond_0
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .locals 2

    .line 1178
    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->injectLocation_enforcePermission()V

    .line 1180
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1182
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1183
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->injectLastLocation(Landroid/location/Location;I)V

    :cond_0
    return-void
.end method

.method public isAdasGnssLocationEnabledForUser(I)Z
    .locals 7

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "isAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1460
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutomotiveGnssSuspended()Z
    .locals 2

    .line 1490
    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended_enforcePermission()V

    .line 1492
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1498
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssManagerService;->isAutomotiveGnssSuspended()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1493
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "isAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isExtraLocationControllerPackageEnabled()Z
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1422
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 1424
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isGeocodeAvailable()Z
    .locals 0

    .line 1505
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLocationEnabledForUser(I)Z
    .locals 7

    .line 1440
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "isLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1442
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1465
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/LocationManagerService$LocalService;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1355
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->isProviderPackage_enforcePermission()V

    .line 1357
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    if-eqz p1, :cond_1

    .line 1358
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1361
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1365
    :cond_2
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_3

    .line 1366
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    const/4 v0, -0x1

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .locals 1

    const/4 v0, -0x1

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method public final synthetic lambda$new$2(II)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$3(I)[Ljava/lang/String;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x107008c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$4(I)[Ljava/lang/String;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x107008b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onSystemReady$5(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 466
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 467
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "location noteOp with location off - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 468
    invoke-static {p2, p1, p3, p4}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 467
    const-string p1, "LocationManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logEmergencyState()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result v0

    .line 666
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/location/injector/LocationUsageLogger;->logEmergencyStateChanged(Z)V

    return-void
.end method

.method public final logLocationEnabledState()V
    .locals 5

    .line 672
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    .line 673
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 674
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v4}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p0

    .line 680
    invoke-virtual {p0, v3}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationEnabledStateChanged(Z)V

    return-void
.end method

.method public final onEmergencyStateChanged()V
    .locals 0

    .line 661
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logEmergencyState()V

    return-void
.end method

.method public final onLocationModeChanged(I)V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v0

    .line 640
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] location enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logLocationEnabled(IZ)V

    .line 649
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->logLocationEnabledState()V

    .line 651
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.location.extra.LOCATION_ENABLED"

    .line 652
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 653
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 657
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    return-void
.end method

.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 1

    .line 621
    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 622
    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    .line 624
    sget-boolean p3, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p3, :cond_0

    .line 625
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] adas gnss location enabled = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LocationManagerService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    sget-object p3, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->logAdasLocationEnabled(IZ)V

    .line 630
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.location.action.ADAS_GNSS_ENABLED_CHANGED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.location.extra.ADAS_GNSS_ENABLED"

    .line 631
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 632
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x10000000

    .line 633
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 634
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 5

    .line 1740
    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v0, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1741
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    .line 1744
    :cond_0
    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    iget-object v1, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->extraAttributionTags:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    iget-object v1, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 1745
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 1749
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    if-eqz v1, :cond_6

    .line 1752
    iget-object p2, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    move p2, v0

    .line 1753
    :goto_1
    iget-object p3, p3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p3

    goto :goto_2

    :cond_4
    move p3, v0

    :goto_2
    if-eq p2, v0, :cond_5

    .line 1755
    invoke-virtual {p0, p2}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object v2

    .line 1756
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1, p2, v2}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    if-eq p3, v0, :cond_6

    if-eq p3, p2, :cond_6

    .line 1762
    invoke-virtual {p0, p3}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    move-result-object p0

    .line 1763
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda13;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    :cond_6
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationManagerService;->initMtkLocationManagerService(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V

    .line 457
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    filled-new-array {v1, v2}, [I

    move-result-object v1

    new-instance v2, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/LocationManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    :cond_0
    return-void
.end method

.method public onSystemThirdPartyAppsCanStart()V
    .locals 11

    .line 477
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1110182

    const v2, 0x10402a2

    const-string/jumbo v3, "network"

    const-string v4, "com.android.location.service.v3.NetworkLocationProvider"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v0

    .line 483
    const-string v1, "LocationManagerService"

    if-eqz v0, :cond_0

    .line 484
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v4, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 486
    invoke-virtual {p0, v2, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_0

    .line 488
    :cond_0
    const-string/jumbo v0, "no network location provider found"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x180000

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "Unable to find a direct boot aware fused location provider"

    .line 492
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040280

    const v10, 0x11101b4

    const-string v6, "fused"

    const-string v7, "com.android.location.service.FusedLocationProvider"

    const v8, 0x1110173

    invoke-static/range {v5 .. v10}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string v7, "fused"

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 507
    invoke-virtual {p0, v3, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    goto :goto_1

    .line 509
    :cond_1
    const-string/jumbo v0, "no fused location provider found"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.location"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 516
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 517
    new-instance v0, Lcom/android/server/location/gnss/GnssConfiguration;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/location/gnss/GnssConfiguration;-><init>(Landroid/content/Context;)V

    .line 518
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-static {v3, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;

    move-result-object v0

    .line 519
    new-instance v3, Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-direct {v3, v5, v6, v0}, Lcom/android/server/location/gnss/GnssManagerService;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 520
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->onSystemReady()V

    .line 522
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111028f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 526
    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040285

    const v10, 0x11101b6

    const-string v6, "gps"

    const-string v7, "android.location.provider.action.GNSS_PROVIDER"

    const v8, 0x1110179

    invoke-static/range {v5 .. v10}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v0

    goto :goto_3

    .line 542
    :cond_3
    new-instance v5, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string v3, "android.permission.LOCATION_HARDWARE"

    .line 548
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v8, "gps_hardware"

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    .line 549
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 550
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssLocationProvider()Lcom/android/server/location/gnss/GnssLocationProvider;

    move-result-object v3

    .line 549
    invoke-virtual {p0, v5, v3}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 553
    :goto_3
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v5, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    const-string v7, "gps"

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V

    .line 555
    invoke-virtual {p0, v3, v0}, Lcom/android/server/location/LocationManagerService;->addLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-nez v0, :cond_5

    .line 561
    const-string/jumbo v0, "no geocoder provider found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 566
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 567
    invoke-static {v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    move-result-object v0

    .line 566
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->setProxyPopulationDensityProvider(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v0, v7

    .line 569
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-nez v3, :cond_6

    .line 570
    const-string/jumbo v3, "no population density provider found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_6
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v4

    :goto_4
    const/16 v5, 0x3ea

    invoke-static {v5, v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZI)V

    .line 576
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    if-eqz v0, :cond_8

    .line 577
    new-instance v0, Lcom/android/server/location/fudger/LocationFudgerCache;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-direct {v0, v3}, Lcom/android/server/location/fudger/LocationFudgerCache;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    .line 581
    :cond_8
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 582
    invoke-static {v0}, Lcom/android/server/location/HardwareActivityRecognitionProxy;->createAndRegister(Landroid/content/Context;)Lcom/android/server/location/HardwareActivityRecognitionProxy;

    move-result-object v0

    if-nez v0, :cond_9

    .line 584
    const-string/jumbo v0, "unable to bind ActivityRecognitionProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_a

    .line 589
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 590
    invoke-virtual {v3}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    .line 589
    invoke-static {v0, v3}, Lcom/android/server/location/geofence/GeofenceProxy;->createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/geofence/GeofenceProxy;

    move-result-object v0

    if-nez v0, :cond_a

    .line 592
    const-string/jumbo v0, "unable to bind to GeofenceProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 599
    array-length v1, v0

    move v3, v4

    :goto_5
    if-ge v3, v1, :cond_b

    aget-object v5, v0, v3

    .line 600
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 601
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 602
    new-instance v7, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v7}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    aget-object v8, v5, v2

    .line 603
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v5, v8

    .line 604
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x3

    aget-object v8, v5, v8

    .line 605
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, v5, v8

    .line 606
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, v5, v8

    .line 607
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, v5, v8

    .line 608
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v5, v8

    .line 609
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/16 v8, 0x8

    aget-object v8, v5, v8

    .line 610
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v7

    const/16 v8, 0x9

    aget-object v5, v5, v8

    .line 611
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v5

    .line 612
    invoke-virtual {v5}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v5

    .line 613
    invoke-virtual {p0, v6}, Lcom/android/server/location/LocationManagerService;->getOrAddLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v6

    .line 614
    new-instance v7, Lcom/android/server/location/provider/MockLocationProvider;

    iget-object v8, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 615
    invoke-static {v8}, Landroid/location/util/identity/CallerIdentity;->fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v8

    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/location/provider/MockLocationProvider;-><init>(Landroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Ljava/util/Set;)V

    .line 614
    invoke-virtual {v6, v7}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_b
    return-void
.end method

.method public final refreshAppOpsRestrictions(I)V
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1773
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 1774
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 1775
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->refreshAppOpsRestrictions(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ltz p1, :cond_2

    move v1, v0

    .line 1780
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1782
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v1}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1786
    new-instance v2, Landroid/os/PackageTagsList$Builder;

    invoke-direct {v2}, Landroid/os/PackageTagsList$Builder;-><init>()V

    .line 1787
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1788
    invoke-virtual {v4}, Lcom/android/server/location/provider/LocationProviderManager;->getProviderIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1790
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/os/PackageTagsList$Builder;

    goto :goto_1

    .line 1793
    :cond_4
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 1794
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {v3}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PackageTagsList$Builder;->add(Landroid/os/PackageTagsList;)Landroid/os/PackageTagsList$Builder;

    .line 1795
    invoke-virtual {v2}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v2

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 1798
    :goto_3
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    .line 1799
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/AppOpsManager;

    .line 1798
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v5, v1, 0x1

    const/4 v4, 0x0

    move-object v6, p0

    move v8, p1

    .line 1800
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    xor-int/lit8 v5, v1, 0x1

    const/4 v4, 0x1

    .line 1806
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    return-void
.end method

.method public registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1220
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1204
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssManagerService;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 886
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 887
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    .line 890
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    .line 889
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiBegin(III)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5, p6}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 894
    iget-object p6, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 895
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    .line 894
    invoke-static {p6, v0, v1}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p6

    const/4 v0, 0x1

    if-nez p6, :cond_2

    .line 898
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 899
    invoke-static {v1, p6, v0}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_1
    const/4 p6, 0x2

    .line 911
    :cond_2
    :goto_0
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_3

    if-nez p5, :cond_3

    .line 912
    new-instance p5, Ljava/lang/IllegalArgumentException;

    invoke-direct {p5}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "system location request with no attribution tag"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 919
    :goto_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provider \""

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" does not exist"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p0, :cond_5

    .line 924
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p5

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 930
    :cond_5
    invoke-virtual {p0, p2, p4, p6, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V

    return-void
.end method

.method public registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 936
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 937
    invoke-static {p3}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v0, p4, p5, v1}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p4

    .line 938
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    .line 939
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    .line 938
    invoke-static {v0, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 942
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.LOCATION_BYPASS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    .line 943
    invoke-static {v2, v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceLocationPermission(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 955
    :cond_1
    :goto_0
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move p5, v4

    goto :goto_2

    :cond_3
    :goto_1
    move p5, v1

    :goto_2
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const-wide/32 v2, 0xa204608

    .line 962
    invoke-virtual {p4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p5

    invoke-static {v2, v3, p5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 963
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result p5

    if-nez p5, :cond_4

    .line 964
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result p5

    if-nez p5, :cond_4

    .line 965
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p5

    if-nez p5, :cond_4

    .line 966
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p5

    invoke-virtual {p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_3

    .line 968
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PendingIntent location requests may not use system APIs: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 973
    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/location/LocationManagerService;->validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;

    move-result-object p2

    .line 975
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v4

    .line 976
    :goto_4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 979
    invoke-virtual {p0, p2, p4, v0, p3}, Lcom/android/server/location/provider/LocationProviderManager;->registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGeofence(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->removeGeofence(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1262
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1245
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    :cond_0
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1315
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    :cond_0
    return-void
.end method

.method public final removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 444
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    .line 445
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 p0, 0x0

    .line 446
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 447
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->stopManager()V

    .line 449
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 1

    .line 1280
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1281
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1561
    invoke-static {p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p2

    .line 1562
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p3}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p3

    const/16 v0, 0x3a

    invoke-virtual {p3, v0, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 1566
    :cond_0
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1567
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1569
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1572
    invoke-virtual {p1, p3}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V

    .line 1573
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager;->hasProvider()Z

    move-result p3

    if-nez p3, :cond_2

    .line 1574
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->removeLocationProviderManager(Lcom/android/server/location/provider/LocationProviderManager;)V

    .line 1576
    :cond_2
    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1192
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/geofence/GeofenceManager;->addGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    .locals 3

    .line 1060
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1061
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1064
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/location/ILocationListener;I)V

    return-void
.end method

.method public requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 3

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1071
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1074
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->flush(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 3

    .line 1510
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1512
    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-static {v0, v1, v2}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 1513
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/provider/ReverseGeocodeRequest;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1515
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    if-eqz p0, :cond_1

    .line 1516
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 1519
    :try_start_0
    invoke-interface {p2, p0}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1322
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfLocationPermission(Landroid/content/Context;I)V

    .line 1323
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1329
    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1333
    :cond_0
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x5

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    .line 1337
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;)V

    return-void
.end method

.method public setAdasGnssLocationEnabledForUser(ZI)V
    .locals 7

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "setAdasGnssLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1450
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    .line 1452
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/location/settings/LocationSettings;->updateUserSettings(ILjava/util/function/Function;)V

    return-void
.end method

.method public setAutomotiveGnssSuspended(Z)V
    .locals 2

    .line 1473
    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended_enforcePermission()V

    .line 1475
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1481
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->setAutomotiveGnssSuspended(Z)V

    :cond_0
    return-void

    .line 1476
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "setAutomotiveGnssSuspended only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 1

    .line 1395
    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage_enforcePermission()V

    .line 1397
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackage:Ljava/lang/String;

    .line 1399
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setExtraLocationControllerPackageEnabled(Z)V
    .locals 1

    .line 1412
    invoke-super {p0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled_enforcePermission()V

    .line 1414
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1415
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/location/LocationManagerService;->mExtraLocationControllerPackageEnabled:Z

    .line 1416
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLocationEnabledForUser(ZI)V
    .locals 7

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "setLocationEnabledForUser"

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1432
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-static {}, Landroid/location/LocationManager;->invalidateLocalLocationEnabledCaches()V

    .line 1435
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p0}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SettingsHelper;->setLocationEnabled(ZI)V

    return-void
.end method

.method public setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 1

    .line 436
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 437
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 438
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProxyPopulationDensityProvider(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    return-void
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1604
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1606
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p4}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p4

    const/16 v0, 0x3a

    invoke-virtual {p4, v0, p3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 1610
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1615
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderAllowed(Z)V

    return-void

    .line 1612
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provider doesn\'t exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1583
    invoke-static {p3, p4}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    .line 1585
    iget-object p4, p0, Lcom/android/server/location/LocationManagerService;->mInjector:Lcom/android/server/location/injector/Injector;

    invoke-interface {p4}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p4

    const/16 v0, 0x3a

    invoke-virtual {p4, v0, p3}, Lcom/android/server/location/injector/AppOpsHelper;->noteOp(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 1589
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result p3

    const-string p4, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {p3, p4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1592
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1597
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setMockProviderLocation(Landroid/location/Location;)V

    return-void

    .line 1594
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "provider doesn\'t exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 703
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->startGnssBatch_enforcePermission()V

    .line 705
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 711
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->stopGnssBatch()V

    .line 714
    const-string v3, "gps"

    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p1, p2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    iget-object v2, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    .line 718
    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssManagerService;->getGnssBatchSize()I

    move-result v2

    int-to-long v4, v2

    mul-long/2addr p1, v4

    .line 717
    invoke-virtual {v0, p1, p2}, Landroid/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 719
    invoke-virtual {p1, p2}, Landroid/location/LocationRequest$Builder;->setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 720
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 714
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/LocationManagerService;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iput-object v5, v2, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 726
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopGnssBatch()V
    .locals 3

    .line 748
    invoke-virtual {p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch_enforcePermission()V

    .line 750
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 757
    iput-object v2, p0, Lcom/android/server/location/LocationManagerService;->mDeprecatedGnssBatchingListener:Landroid/location/ILocationListener;

    .line 758
    invoke-virtual {p0, v1}, Lcom/android/server/location/LocationManagerService;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 760
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1228
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    :cond_0
    return-void
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    if-eqz v0, :cond_0

    .line 1212
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mGnssManagerService:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    :cond_0
    return-void
.end method

.method public unregisterLocationListener(Landroid/location/ILocationListener;)V
    .locals 4

    .line 1079
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1080
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    if-eqz v0, :cond_0

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v3, 0x3

    .line 1082
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/ActivityManagerInternal;->logFgsApiEnd(III)V

    .line 1085
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1086
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/location/ILocationListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1092
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 1093
    invoke-virtual {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->unregisterLocationRequest(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final validateLastLocationRequest(Ljava/lang/String;Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .locals 3

    .line 1134
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 1136
    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object p2

    .line 1139
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result p3

    .line 1141
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isHiddenFromAppOps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v2, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_0
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_3

    .line 1157
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_0

    .line 1153
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1149
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1160
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    .line 1162
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_4
    return-object p2
.end method

.method public final validateLocationRequest(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LocationRequest;
    .locals 8

    .line 985
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "setting a work source requires android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p2}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-wide/32 v2, 0xa11c3b7

    invoke-static {v2, v3, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v1

    const-string v4, "android.permission.LOCATION_HARDWARE"

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 995
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 997
    invoke-virtual {v0, v5}, Landroid/location/LocationRequest$Builder;->setLowPower(Z)Landroid/location/LocationRequest$Builder;

    .line 1001
    :cond_1
    new-instance v1, Landroid/os/WorkSource;

    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 1002
    invoke-virtual {v1}, Landroid/os/WorkSource;->size()I

    move-result p2

    const-string v6, "LocationManagerService"

    if-lez p2, :cond_2

    invoke-virtual {v1, v5}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1003
    const-string/jumbo p2, "received (and ignoring) illegal worksource with no package name"

    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    goto :goto_0

    .line 1006
    :cond_2
    invoke-virtual {v1}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1007
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1008
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p2}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1009
    const-string/jumbo p2, "received (and ignoring) illegal worksource with no attribution tag"

    invoke-static {v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 1015
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1016
    invoke-virtual {p3, v1}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    .line 1018
    :cond_4
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;

    .line 1020
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p2

    .line 1023
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService;->mLocalService:Lcom/android/server/location/LocationManagerService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/android/server/location/LocationManagerService$LocalService;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 1025
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p3

    .line 1025
    invoke-static {v2, v3, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1027
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "low power request requires android.permission.LOCATION_HARDWARE"

    invoke-virtual {p3, v4, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_5
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isHiddenFromAppOps()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1032
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const-string v2, "hiding from app ops requires android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p3, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_6
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1037
    iget-object p3, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p3, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1041
    const-string p3, "gps"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_9

    .line 1046
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    goto :goto_1

    .line 1042
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on the \"gps\" provider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1038
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "adas gnss bypass requests are only allowed on automotive devices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1049
    :cond_9
    :goto_1
    invoke-virtual {p2}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v0, :cond_a

    .line 1051
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/location/LocationPermissions;->enforceCallingOrSelfBypassPermission(Landroid/content/Context;)V

    :cond_a
    return-object p2
.end method
