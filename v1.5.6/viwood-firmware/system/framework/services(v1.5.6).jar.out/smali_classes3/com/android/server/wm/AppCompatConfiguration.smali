.class public final Lcom/android/server/wm/AppCompatConfiguration;
.super Ljava/lang/Object;
.source "AppCompatConfiguration.java"


# instance fields
.field public final mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

.field public mCameraCompatAspectRatio:F

.field public final mContext:Landroid/content/Context;

.field public mDefaultMinAspectRatioForUnresizableApps:F

.field public mDefaultPositionForHorizontalReachability:I

.field public mDefaultPositionForVerticalReachability:I

.field public final mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mIsAutomaticReachabilityInBookModeEnabled:Z

.field public mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

.field public mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field public final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field public mIsCameraCompatTreatmentRefreshEnabled:Z

.field public mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field public mIsEducationEnabled:Z

.field public mIsHorizontalReachabilityEnabled:Z

.field public final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field public mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field public mIsVerticalReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public final mLetterboxBackgroundType:I

.field public mLetterboxBackgroundTypeOverride:I

.field public mLetterboxBackgroundWallpaperBlurRadiusPx:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxBookModePositionMultiplier:F

.field public mLetterboxHorizontalPositionMultiplier:F

.field public mLetterboxTabletopModePositionMultiplier:F

.field public mLetterboxVerticalPositionMultiplier:F

.field public final mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public final mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public mTranslucentLetterboxingOverrideEnabled:Z

.field public mUserAppAspectRatioFullscreenOverrideEnabled:Z

.field public mUserAppAspectRatioSettingsOverrideEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$1T9-bd9hU1PBwmmR2Ukw6jXdOCc(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 326
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BiemjI3Bs0jz1dJh3ts4y4kSTFo(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KQ2bkE3MuAlvpzaFzr-XNi9YiUM(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1092
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    .line 1091
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Oh5I2_GJ2LhD0pXm_ZTUkNtr-Jw(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1082
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p1, p0

    .line 1081
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PTOq1ckEo7_ZoQCBsa5eR2iH428(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vaw-d6xHC7DU4IzQJxPTXUI96zU(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    .line 1112
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YGl2W9-CUHlXccr4c-FWxmqxcZA(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q8CyIDu5FF5I69ki5uRYf3180RY(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    add-int/2addr p1, p0

    .line 1101
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 321
    new-instance v0, Lcom/android/server/wm/AppCompatConfigurationPersister;

    new-instance v1, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .locals 4

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 286
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 305
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    const/4 v1, 0x0

    .line 310
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    .line 335
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 339
    invoke-static {p1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 344
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxHorizontalPositionMultiplier(F)V

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxVerticalPositionMultiplier(F)V

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBookModePositionMultiplier(F)V

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f5

    .line 353
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 352
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxTabletopModePositionMultiplier(F)V

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 361
    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 363
    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 370
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101db

    .line 371
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    .line 380
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x10500f7

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 382
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x10500f6

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 385
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 386
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->start()V

    .line 388
    const-string p2, "window_manager"

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 388
    invoke-static {p2, v2}, Lcom/android/server/wm/SynchedDeviceConfig;->builder(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 390
    const-string v3, "enable_compat_camera_treatment"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 394
    const-string v3, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    const-string v2, "allow_ignore_orientation_request"

    .line 398
    invoke-virtual {p2, v2, v0, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 400
    const-string v3, "enable_compat_fake_focus"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 403
    const-string v3, "enable_letterbox_translucent_activity"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 407
    const-string v3, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    const-string v2, "enable_letterbox_background_wallpaper"

    .line 411
    invoke-virtual {p2, v2, v1, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1110036

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 413
    const-string v1, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->build()Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    return-void
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :cond_0
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object p0

    .line 599
    :cond_1
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object p0

    .line 597
    :cond_2
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object p0

    .line 595
    :cond_3
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object p0
.end method

.method public static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1053
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    return-object p0

    .line 1055
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1051
    :cond_1
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    .line 1049
    :cond_2
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    return-object p0
.end method

.method public static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1069
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    return-object p0

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1067
    :cond_1
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    .line 1065
    :cond_2
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    return-object p0
.end method

.method public static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .locals 1

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00b2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    .line 953
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00b3

    goto :goto_0

    :cond_0
    const p1, 0x10e00b4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    return p0
.end method

.method public static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    .line 966
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x10e00b5

    goto :goto_0

    :cond_0
    const p1, 0x10e00b6

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public final assertValidMultiplier(FLjava/lang/String;)F
    .locals 2

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_0

    return p1

    .line 1477
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " out of bounds: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxPositionForHorizontalReachability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1450
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v2

    .line 1449
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxPositionForVerticalReachability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v1

    .line 1453
    invoke-static {v1}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  fixedOrientationLetterboxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  defaultMinAspectRatioForUnresizableApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isSplitScreenAspectRatioForUnresizableAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  isDisplayAspectRatioEnabledForFixedOrientationLetterbox="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1462
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCameraCompatAspectRatio()F
    .locals 0

    .line 1346
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return p0
.end method

.method public final getDefaultLetterboxBackgroundType()I
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_letterbox_background_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 587
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    return p0
.end method

.method public getDefaultMinAspectRatioForUnresizableApps()F
    .locals 0

    .line 466
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return p0
.end method

.method public getDefaultPositionForHorizontalReachability()I
    .locals 0

    .line 845
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return p0
.end method

.method public getDefaultPositionForVerticalReachability()I
    .locals 0

    .line 857
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio()F
    .locals 0

    .line 451
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return p0
.end method

.method public getHorizontalMultiplierForReachability(Z)F
    .locals 2

    .line 983
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 994
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getIsAutomaticReachabilityInBookModeEnabled()Z
    .locals 0

    .line 779
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return p0
.end method

.method public getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z
    .locals 0

    .line 1151
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return p0
.end method

.method public getIsEducationEnabled()Z
    .locals 0

    .line 1121
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return p0
.end method

.method public getIsHorizontalReachabilityEnabled()Z
    .locals 0

    .line 763
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return p0
.end method

.method public getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z
    .locals 0

    .line 1144
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return p0
.end method

.method public getIsVerticalReachabilityEnabled()Z
    .locals 0

    .line 771
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return p0
.end method

.method public getLetterboxActivityCornersRadius()I
    .locals 0

    .line 506
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_0

    return-object v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const v0, 0x10601f9

    .line 523
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .locals 2

    .line 559
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultLetterboxBackgroundType()I

    move-result p0

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .locals 0

    .line 673
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .locals 0

    .line 643
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return p0
.end method

.method public getLetterboxHorizontalPositionMultiplier(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 683
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    return p0

    .line 684
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return p0
.end method

.method public getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxVerticalPositionMultiplier(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 694
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    return p0

    .line 695
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return p0
.end method

.method public getThinLetterboxHeightPx()I
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method public getThinLetterboxWidthPx()I
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method public getVerticalMultiplierForReachability(Z)F
    .locals 2

    .line 1007
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1018
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraCompatFreeformWindowingTreatmentEnabled()Z
    .locals 0

    .line 1371
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    return p0
.end method

.method public isCameraCompatRefreshCycleThroughStopEnabled()Z
    .locals 0

    .line 1314
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return p0
.end method

.method public isCameraCompatRefreshEnabled()Z
    .locals 0

    .line 1294
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return p0
.end method

.method public isCameraCompatSplitScreenAspectRatioEnabled()Z
    .locals 0

    .line 1273
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    return p0
.end method

.method public isCameraCompatTreatmentEnabled()Z
    .locals 1

    .line 1280
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_camera_treatment"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCameraCompatTreatmentEnabledAtBuildTime()Z
    .locals 1

    .line 1289
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_camera_treatment"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCompatFakeFocusEnabled()Z
    .locals 1

    .line 1256
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_fake_focus"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDisplayRotationImmersiveAppCompatPolicyEnabled()Z
    .locals 1

    .line 1406
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDisplayRotationImmersiveAppCompatPolicyEnabledAtBuildTime()Z
    .locals 1

    .line 1393
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIgnoreOrientationRequestAllowed()Z
    .locals 1

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "allow_ignore_orientation_request"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLetterboxActivityCornersRounded()Z
    .locals 0

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPolicyForIgnoringRequestedOrientationEnabled()Z
    .locals 0

    .line 1265
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    return p0
.end method

.method public isTranslucentLetterboxingEnabled()Z
    .locals 1

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_letterbox_translucent_activity"

    .line 1209
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

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

.method public isUserAppAspectRatioFullscreenEnabled()Z
    .locals 1

    .line 1433
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_app_compat_user_aspect_ratio_fullscreen"

    .line 1435
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isUserAppAspectRatioSettingsEnabled()Z
    .locals 1

    .line 1413
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_app_compat_aspect_ratio_user_settings"

    .line 1414
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

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

.method public movePositionForHorizontalReachabilityToNextLeftStop(Z)V
    .locals 1

    .line 1091
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForHorizontalReachabilityToNextRightStop(Z)V
    .locals 1

    .line 1081
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextBottomStop(Z)V
    .locals 1

    .line 1101
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextTopStop(Z)V
    .locals 1

    .line 1112
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public resetCameraCompatAspectRatio()V
    .locals 2

    .line 1354
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return-void
.end method

.method public resetCameraCompatRefreshCycleThroughStopEnabled()V
    .locals 1

    const/4 v0, 0x1

    .line 1330
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public resetCameraCompatRefreshEnabled()V
    .locals 1

    const/4 v0, 0x1

    .line 1306
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public resetDefaultMinAspectRatioForUnresizableApps()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    return-void
.end method

.method public resetDefaultPositionForHorizontalReachability()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 884
    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public resetDefaultPositionForVerticalReachability()V
    .locals 2

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 894
    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public resetEnabledAutomaticReachabilityInBookMode()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public resetFixedOrientationLetterboxAspectRatio()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public resetIsCameraCompatFreeformWindowingTreatmentEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1379
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    return-void
.end method

.method public resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101db

    .line 1203
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public resetIsEducationEnabled()V
    .locals 2

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public resetIsHorizontalReachabilityEnabled()V
    .locals 2

    .line 812
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public resetIsVerticalReachabilityEnabled()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public resetLetterboxActivityCornersRadius()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public resetLetterboxBackgroundColor()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 551
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public resetLetterboxBackgroundType()V
    .locals 1

    const/4 v0, -0x1

    .line 578
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperBlurRadiusPx()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public resetLetterboxHorizontalPositionMultiplier()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public resetLetterboxVerticalPositionMultiplier()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public resetPersistentLetterboxPositionForHorizontalReachability()V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 926
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 924
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 930
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    .line 928
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public resetPersistentLetterboxPositionForVerticalReachability()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 942
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 940
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 946
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    .line 944
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method

.method public resetTranslucentLetterboxingEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1227
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setTranslucentLetterboxingOverrideEnabled(Z)V

    return-void
.end method

.method public resetUserAppAspectRatioFullscreenEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1443
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioFullscreenOverrideEnabled(Z)V

    return-void
.end method

.method public resetUserAppAspectRatioSettingsEnabled()V
    .locals 1

    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioSettingsOverrideEnabled(Z)V

    return-void
.end method

.method public setCameraCompatAspectRatio(F)V
    .locals 0

    .line 1338
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return-void
.end method

.method public setCameraCompatRefreshCycleThroughStopEnabled(Z)V
    .locals 0

    .line 1322
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public setCameraCompatRefreshEnabled(Z)V
    .locals 0

    .line 1299
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public setDefaultMinAspectRatioForUnresizableApps(F)V
    .locals 0

    .line 473
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return-void
.end method

.method public setDefaultPositionForHorizontalReachability(I)V
    .locals 0

    .line 866
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public setDefaultPositionForVerticalReachability(I)V
    .locals 0

    .line 875
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public setFixedOrientationLetterboxAspectRatio(F)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public setIsAutomaticReachabilityInBookModeEnabled(Z)V
    .locals 0

    .line 803
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public setIsCameraCompatFreeformWindowingTreatmentEnabled(Z)V
    .locals 0

    .line 1363
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatFreeformWindowingTreatmentEnabled:Z

    return-void
.end method

.method public setIsDisplayAspectRatioEnabledForFixedOrientationLetterbox(Z)V
    .locals 0

    .line 1185
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public setIsEducationEnabled(Z)V
    .locals 0

    .line 1128
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public setIsHorizontalReachabilityEnabled(Z)V
    .locals 0

    .line 787
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public setIsSplitScreenAspectRatioForUnresizableAppsEnabled(Z)V
    .locals 0

    .line 1177
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public setIsVerticalReachabilityEnabled(Z)V
    .locals 0

    .line 795
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public setLetterboxActivityCornersRadius(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public setLetterboxBackgroundColor(Landroid/graphics/Color;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    return-void
.end method

.method public setLetterboxBackgroundColorResourceId(I)V
    .locals 0

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public setLetterboxBackgroundTypeOverride(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperBlurRadiusPx(I)V
    .locals 0

    .line 655
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public setLetterboxBookModePositionMultiplier(F)V
    .locals 1

    .line 754
    const-string v0, "mLetterboxBookModePositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    return-void
.end method

.method public setLetterboxHorizontalPositionMultiplier(F)V
    .locals 1

    .line 704
    const-string v0, "mLetterboxHorizontalPositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public setLetterboxTabletopModePositionMultiplier(F)V
    .locals 1

    .line 743
    const-string v0, "mLetterboxTabletopModePositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    return-void
.end method

.method public setLetterboxVerticalPositionMultiplier(F)V
    .locals 1

    .line 714
    const-string v0, "mLetterboxVerticalPositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public setPersistentLetterboxPositionForHorizontalReachability(ZI)V
    .locals 0

    .line 904
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public setPersistentLetterboxPositionForVerticalReachability(ZI)V
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method

.method public setTranslucentLetterboxingOverrideEnabled(Z)V
    .locals 0

    .line 1218
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    return-void
.end method

.method public setUserAppAspectRatioFullscreenOverrideEnabled(Z)V
    .locals 0

    .line 1439
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    return-void
.end method

.method public setUserAppAspectRatioSettingsOverrideEnabled(Z)V
    .locals 0

    .line 1418
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    return-void
.end method

.method public final updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1234
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    .line 1237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1236
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1238
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public final updatePositionForVerticalReachability(ZLjava/util/function/Function;)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1246
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    .line 1249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1248
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1250
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method
