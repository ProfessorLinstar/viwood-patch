.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "ServiceConfigAccessorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# static fields
.field public static final CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field public static final DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field public static final LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# instance fields
.field public final mConfigurationInternalListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public mRecordStateChangesForTests:Z

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field public mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$0jigQL7VN-jAH6VbV4023YMMKLk(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$gxEwKFbg9t8OLCTnVCyPFXNrp6s(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserRestrictionsChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleUserRestrictionsChangeOnMainThread(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 62
    const-string/jumbo v11, "time_zone_notifications_tracking_supported"

    const-string/jumbo v12, "time_zone_manual_change_tracking_supported"

    const-string v0, "location_time_zone_detection_feature_supported"

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v2, "secondary_location_time_zone_provider_mode_override"

    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    const-string v4, "enhanced_metrics_collection_enabled"

    const-string v5, "location_time_zone_detection_setting_enabled_default"

    const-string v6, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v7, "time_zone_detector_auto_detection_enabled_default"

    const-string/jumbo v8, "time_zone_detector_telephony_fallback_supported"

    const-string/jumbo v9, "time_zone_notifications_supported"

    const-string/jumbo v10, "time_zone_notifications_enabled_default"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 82
    const-string v9, "ltzp_event_filtering_age_threshold_millis"

    const-string v10, "location_time_zone_detection_uncertainty_delay_millis"

    const-string v1, "location_time_zone_detection_feature_supported"

    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    const-string v3, "location_time_zone_detection_setting_enabled_default"

    const-string v4, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v5, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v6, "secondary_location_time_zone_provider_mode_override"

    const-string v7, "ltzp_init_timeout_millis"

    const-string v8, "ltzp_init_timeout_fuzz_millis"

    invoke-static/range {v1 .. v10}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    const-wide/16 v0, 0x5

    .line 95
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v2, 0x1

    .line 96
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 97
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 98
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 171
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 172
    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 173
    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 180
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 194
    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 200
    const-string v4, "auto_time_zone"

    .line 201
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 200
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    const-string v4, "auto_time_zone_explicit"

    .line 203
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 202
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    const-string/jumbo v4, "time_zone_notifications"

    .line 206
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 205
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    const-string v4, "location_time_zone_detection_enabled"

    .line 211
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, -0x1

    .line 210
    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 215
    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    sget-object v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    .line 219
    new-instance p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;

    invoke-direct {p1, p0, v2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$3;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .locals 2

    .line 235
    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_0
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 239
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object p0

    .line 240
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .locals 1

    .line 494
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    return-void
.end method

.method public final areNotificationsEnabledByDefault()Z
    .locals 2

    .line 473
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v0, "time_zone_notifications_enabled_default"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final areNotificationsSupported()Z
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const v1, 0x1110191

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    .line 449
    const-string/jumbo v1, "time_zone_notifications_supported"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final atLeastOneProviderIsEnabled()Z
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getAutoDetectionEnabledSetting()Z
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 399
    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v4, "time_zone_detector_auto_detection_enabled_default"

    invoke-virtual {v0, v4}, Lcom/android/server/timedetector/ServerFlags;->getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    iget-object v4, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone_explicit"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 410
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v2, :cond_1

    .line 417
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return v0

    :cond_2
    return v2
.end method

.method public final getConfigBoolean(I)Z
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 734
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    monitor-enter p0

    .line 359
    :try_start_0
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>()V

    .line 360
    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserId(I)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyFallbackSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyFallbackSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionRunInBackgroundEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isEnhancedMetricsCollectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setEnhancedMetricsCollectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getLocationEnabledSetting(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setLocationEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 371
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->areNotificationsSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setNotificationsSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 372
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getNotificationsEnabledSetting()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setNotificationsEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 373
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isNotificationTrackingSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setNotificationsTrackingSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 374
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isManualChangeTrackingSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setManualChangeTrackingSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 278
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getGeoDetectionEnabledSetting(I)Z
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoDetectionEnabledForUsersByDefault()Z

    move-result v0

    .line 435
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "location_time_zone_detection_enabled"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getGeoDetectionRunInBackgroundEnabled()Z
    .locals 2

    .line 549
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_run_in_background_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .locals 1

    .line 677
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_setting_enabled_override"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServerFlags;->getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getLocationEnabledSetting(I)Z
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;
    .locals 2

    .line 708
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "ltzp_event_filtering_age_threshold_millis"

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
    .locals 2

    .line 684
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "ltzp_init_timeout_millis"

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .locals 2

    .line 692
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "ltzp_init_timeout_fuzz_millis"

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
    .locals 2

    .line 700
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_uncertainty_delay_millis"

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationsEnabledSetting()Z
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->areNotificationsEnabledByDefault()Z

    move-result v0

    .line 468
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "time_zone_notifications"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 638
    monitor-exit p0

    return-object v0

    .line 640
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const v0, 0x1110187

    .line 647
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "enabled"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "disabled"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 572
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized getRecordStateChangesForTests()Z
    .locals 1

    monitor-enter p0

    .line 630
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 655
    monitor-exit p0

    return-object v0

    .line 657
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "secondary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 658
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    const v0, 0x111018c

    .line 664
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string v0, "enabled"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "disabled"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 601
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final handleConfigurationInternalChangeOnMainThread()V
    .locals 3

    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 251
    invoke-interface {v2}, Lcom/android/server/timezonedetector/StateChangeListener;->onChange()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final handleUserRestrictionsChangeOnMainThread(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 259
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public final isAutoDetectionFeatureSupported()Z
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

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

.method public final isEnhancedMetricsCollectionEnabled()Z
    .locals 2

    .line 560
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "enhanced_metrics_collection_enabled"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGeoDetectionEnabledForUsersByDefault()Z
    .locals 2

    .line 670
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_setting_enabled_default"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isGeoTimeZoneDetectionFeatureSupported()Z
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->atLeastOneProviderIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
    .locals 1

    const v0, 0x1110177

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isGeoTimeZoneDetectionFeatureSupportedInternal()Z
    .locals 2

    .line 537
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "location_time_zone_detection_feature_supported"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isManualChangeTrackingSupported()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const v1, 0x1110190

    .line 463
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    .line 461
    const-string/jumbo v1, "time_zone_manual_change_tracking_supported"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isNotificationTrackingSupported()Z
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const v1, 0x1110192

    .line 457
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    .line 455
    const-string/jumbo v1, "time_zone_notifications_tracking_supported"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isTelephonyFallbackSupported()Z
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const v1, 0x1110265

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result p0

    .line 727
    const-string/jumbo v1, "time_zone_detector_telephony_fallback_supported"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTelephonyTimeZoneDetectionFeatureSupported()Z
    .locals 1

    const v0, 0x111018f

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isTestPrimaryLocationTimeZoneProvider()Z
    .locals 1

    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isTestSecondaryLocationTimeZoneProvider()Z
    .locals 1

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isUserConfigAllowed(I)Z
    .locals 1

    .line 393
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 394
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized resetVolatileTestConfig()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 715
    :try_start_0
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 716
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 717
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 718
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z

    .line 723
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setAutoDetectionEnabledIfRequired(Z)V
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 384
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "auto_time_zone"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final setGeoDetectionEnabledSettingIfRequired(IZ)V
    .locals 1

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 443
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "location_time_zone_detection_enabled"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public final setNotificationsEnabledIfRequired(Z)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getNotificationsEnabledSetting()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 487
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "time_zone_notifications"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public final setNotificationsEnabledSetting(Z)V
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "time_zone_notifications"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public declared-synchronized setRecordStateChangesForTests(Z)V
    .locals 0

    monitor-enter p0

    .line 625
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 579
    :try_start_0
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 583
    const-string p1, "disabled"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "enabled"

    :goto_0
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 586
    iget-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 608
    :try_start_0
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 612
    const-string p1, "disabled"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "enabled"

    :goto_0
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 615
    iget-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)V
    .locals 3

    .line 316
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isAutoDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone_explicit"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    :cond_0
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setAutoDetectionEnabledIfRequired(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v0

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setGeoDetectionEnabledSettingIfRequired(IZ)V

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->areNotificationsSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->hasIsNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result p1

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setNotificationsEnabledSetting(Z)V

    .line 352
    :cond_2
    invoke-virtual {p3}, Landroid/app/time/TimeZoneConfiguration;->areNotificationsEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setNotificationsEnabledIfRequired(Z)V

    :cond_3
    return-void
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;Z)Z
    .locals 1

    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities(Z)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p3

    .line 291
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 294
    invoke-virtual {p3, v0, p2}, Landroid/app/time/TimeZoneCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 297
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 302
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
