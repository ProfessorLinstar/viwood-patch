.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# static fields
.field static final BRIGHTNESS_DEFAULT:F = 0.5f

.field public static final DEBUG:Z

.field public static final DEFAULT_BRIGHTNESS_THRESHOLDS:[F

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f


# instance fields
.field public mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientHorizonLong:I

.field public mAmbientHorizonShort:I

.field public mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

.field public mAutoBrightnessAvailable:Z

.field public mAutoBrightnessBrighteningLightDebounce:J

.field public mAutoBrightnessBrighteningLightDebounceIdle:J

.field public mAutoBrightnessDarkeningLightDebounce:J

.field public mAutoBrightnessDarkeningLightDebounceIdle:J

.field public mBacklight:[F

.field public mBacklightMaximum:F

.field public mBacklightMinimum:F

.field public mBacklightToBrightnessSpline:Landroid/util/Spline;

.field public mBacklightToNitsSpline:Landroid/util/Spline;

.field public mBrightness:[F

.field public mBrightnessCapForWearBedtimeMode:F

.field public mBrightnessDefault:F

.field public mBrightnessDim:F

.field public mBrightnessRampDecreaseMaxIdleMillis:J

.field public mBrightnessRampDecreaseMaxMillis:J

.field public mBrightnessRampFastDecrease:F

.field public mBrightnessRampFastIncrease:F

.field public mBrightnessRampIncreaseMaxIdleMillis:J

.field public mBrightnessRampIncreaseMaxMillis:J

.field public mBrightnessRampSlowDecrease:F

.field public mBrightnessRampSlowDecreaseIdle:F

.field public mBrightnessRampSlowIncrease:F

.field public mBrightnessRampSlowIncreaseIdle:F

.field public mBrightnessToBacklightSpline:Landroid/util/Spline;

.field public final mContext:Landroid/content/Context;

.field public mDdcAutoBrightnessAvailable:Z

.field public mDefaultDozeBrightness:F

.field public mDefaultHighBlockingZoneRefreshRate:I

.field public mDefaultLowBlockingZoneRefreshRate:I

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

.field public mDozeBrightnessSensorValueToBrightness:[F

.field public mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighBlockingZoneThermalMapId:Ljava/lang/String;

.field public mHighDisplayBrightnessThresholds:[F

.field public mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field public mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

.field public mIdleStylusTimeoutMillis:I

.field public mInterpolationType:I

.field public mLoadedFrom:Ljava/lang/String;

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowBlockingZoneThermalMapId:Ljava/lang/String;

.field public mLowDisplayBrightnessThresholds:[F

.field public final mLuxThrottlingData:Ljava/util/Map;

.field public mName:Ljava/lang/String;

.field public mNits:[F

.field public mNitsToBacklightSpline:Landroid/util/Spline;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public final mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mProximitySensor:Lcom/android/server/display/config/SensorData;

.field public mQuirks:Ljava/util/List;

.field public mRawBacklight:[F

.field public mRawNits:[F

.field public mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

.field public final mRefreshRateLimitations:Ljava/util/List;

.field public final mRefreshRateThrottlingMap:Ljava/util/Map;

.field public final mRefreshRateZoneProfiles:Ljava/util/Map;

.field public mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

.field public mScreenOffBrightnessSensorValueToLux:[I

.field public mTempSensor:Lcom/android/server/display/config/SensorData;

.field public final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mVrrSupportEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$kvaggoREB46PbgPpqpZy8K1UmjQ(Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 665
    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    const/4 v0, 0x0

    .line 692
    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 4

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/4 v0, 0x0

    .line 762
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 765
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 766
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 767
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 768
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 769
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 770
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 771
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 772
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 773
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 774
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v1, 0x0

    .line 775
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 776
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 777
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 778
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    const/16 v1, 0x2710

    .line 779
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    const/16 v1, 0x7d0

    .line 780
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    const/4 v1, 0x0

    .line 784
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 786
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 788
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 790
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 806
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 809
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 813
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 817
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 821
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 825
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    const/4 v2, 0x1

    .line 827
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 833
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    const/16 v0, 0x3c

    .line 839
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 859
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 860
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 878
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 879
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 884
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 885
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 890
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 917
    sget-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 934
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 935
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2830
    :cond_0
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DisplayDeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    .line 952
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 955
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-object p1
.end method

.method public static create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    if-eqz p1, :cond_0

    .line 972
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0

    .line 974
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 983
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 989
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 998
    :cond_1
    invoke-static {p0, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1822
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1823
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1829
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1830
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method public static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 1809
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1810
    const-string p3, "display_%s.xml"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1811
    const-string p3, "etc"

    const-string p4, "displayconfig"

    filled-new-array {p3, p4, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1813
    new-instance p2, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {p2, p0, p5}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1814
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .locals 2

    .line 1042
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1043
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;F)[F
    .locals 4

    .line 2960
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2961
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2963
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2965
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .locals 3

    .line 2976
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2977
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 2978
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 6

    .line 1054
    const-string v2, "id_%d"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    move-wide p1, v3

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-wide p3, -0x4000000000000001L    # -1.9999999999999998

    and-long v3, p1, p3

    .line 1062
    const-string v2, "%d"

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 1070
    :cond_1
    invoke-static {p1, p2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    .line 1071
    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    .line 1072
    const-string/jumbo v2, "port_%d"

    int-to-long v3, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 7

    .line 1002
    const-string v0, "DisplayDeviceConfig"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10e006b

    .line 1010
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1011
    invoke-static {p0}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1013
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v6, "default_%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1015
    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 1013
    invoke-static {v2, p0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1020
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return-object v1

    .line 1028
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :try_start_1
    invoke-static {v2}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1031
    const-string v3, "Default DisplayDeviceConfig file is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 1033
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_3

    .line 1028
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1034
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final constrainNitsAndBacklightArrays()V
    .locals 11

    .line 2562
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_7

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_7

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_7

    .line 2572
    array-length v2, v0

    new-array v2, v2, [F

    .line 2573
    array-length v0, v0

    new-array v0, v0, [F

    move v3, v1

    .line 2577
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 2578
    aget v5, v5, v6

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_1
    move v6, v1

    move v7, v6

    move v5, v3

    .line 2586
    :goto_2
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v5, v9, :cond_6

    if-nez v6, :cond_6

    sub-int v7, v5, v3

    .line 2590
    aget v6, v8, v5

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v10, v6, v9

    if-gez v10, :cond_3

    array-length v8, v8

    sub-int/2addr v8, v4

    if-lt v5, v8, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v8, v4

    :goto_4
    if-nez v7, :cond_4

    .line 2594
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 2595
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    :cond_4
    if-eqz v8, :cond_5

    .line 2597
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-int/lit8 v9, v5, -0x1

    .line 2598
    invoke-virtual {p0, v9, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_5

    .line 2601
    :cond_5
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v5

    .line 2603
    :goto_5
    aput v6, v0, v7

    .line 2604
    aput v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_2

    :cond_6
    add-int/2addr v7, v4

    .line 2606
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2607
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2608
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    .line 2565
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v1

    sub-int/2addr v3, v4

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertInterpolationType(Ljava/lang/String;)I
    .locals 2

    .line 2852
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 2856
    :cond_0
    const-string/jumbo p0, "linear"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2860
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Interpolation Type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayDeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_1

    .line 1962
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final createBacklightConversionSplines()V
    .locals 8

    .line 2627
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    move v1, v0

    .line 2628
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 2629
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v5, v3, v0

    array-length v6, v3

    sub-int/2addr v6, v4

    aget v4, v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    aget v3, v3, v1

    const/4 v7, 0x0

    invoke-static {v5, v4, v7, v6, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2633
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_1

    .line 2635
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2636
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_2

    .line 2637
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_2

    .line 2638
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2639
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_3

    .line 2640
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_3

    .line 2641
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 2642
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_4

    .line 2643
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4

    .line 2644
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-void
.end method

.method public getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 0

    .line 1370
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 0

    .line 1374
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientHorizonLong()I
    .locals 0

    .line 1362
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return p0
.end method

.method public getAmbientHorizonShort()I
    .locals 0

    .line 1366
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return p0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 1386
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevels(II)[F
    .locals 0

    .line 1538
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1541
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getBrightnessArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsLux(II)[F
    .locals 0

    .line 1514
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1517
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getLuxArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsNits()[F
    .locals 0

    .line 1524
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getNitsArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLightDebounce()J
    .locals 2

    .line 1488
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessBrighteningLightDebounceIdle()J
    .locals 2

    .line 1502
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounce()J
    .locals 2

    .line 1481
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounceIdle()J
    .locals 2

    .line 1495
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-wide v0
.end method

.method public getBacklight()[F
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1105
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    return-object p0

    .line 1107
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object p0
.end method

.method public getBacklightFromBrightness(F)F
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1119
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1121
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBacklightFromNits(F)F
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1177
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1179
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getBacklightToBrightnessSpline()Landroid/util/Spline;
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1143
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    return-object p0

    .line 1145
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getBrightness()[F
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1280
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    return-object p0

    .line 1282
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object p0
.end method

.method public getBrightnessCapForWearBedtimeMode()F
    .locals 0

    .line 1674
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return p0
.end method

.method public getBrightnessDefault()F
    .locals 0

    .line 1309
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return p0
.end method

.method public getBrightnessDim()F
    .locals 0

    .line 1318
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return p0
.end method

.method public getBrightnessFromBacklight(F)F
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1132
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1134
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessMaximum()F
    .locals 1

    .line 1300
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessMinimum()F
    .locals 1

    .line 1291
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessRampDecreaseMaxIdleMillis()J
    .locals 2

    .line 1354
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .locals 2

    .line 1346
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .locals 0

    .line 1322
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return p0
.end method

.method public getBrightnessRampFastIncrease()F
    .locals 0

    .line 1326
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return p0
.end method

.method public getBrightnessRampIncreaseMaxIdleMillis()J
    .locals 2

    .line 1358
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .locals 2

    .line 1350
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .locals 0

    .line 1330
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return p0
.end method

.method public getBrightnessRampSlowDecreaseIdle()F
    .locals 0

    .line 1338
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    return p0
.end method

.method public getBrightnessRampSlowIncrease()F
    .locals 0

    .line 1334
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return p0
.end method

.method public getBrightnessRampSlowIncreaseIdle()F
    .locals 0

    .line 1342
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    return p0
.end method

.method public getDefaultDozeBrightness()F
    .locals 0

    .line 1699
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    return p0
.end method

.method public getDefaultHighBlockingZoneRefreshRate()I
    .locals 0

    .line 1552
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDefaultLowBlockingZoneRefreshRate()I
    .locals 0

    .line 1559
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .locals 0

    .line 1447
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object p0
.end method

.method public getDozeBrightnessSensorValueToBrightness()[F
    .locals 0

    .line 1691
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    return-object p0
.end method

.method public getEvenDimmerTransitionPoint()F
    .locals 0

    .line 1206
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1209
    :cond_0
    iget p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    return p0
.end method

.method public getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;
    .locals 0

    .line 1567
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    return-object p0
.end method

.method public getHdrBrightnessFromSdr(FF)F
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1227
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F

    move-result p0

    return p0
.end method

.method public getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F
    .locals 5

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p3, :cond_0

    return v0

    .line 1243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v1

    .line 1244
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    cmpl-float v3, v2, v0

    if-nez v3, :cond_1

    return v0

    .line 1249
    :cond_1
    invoke-virtual {p3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p3, v2, p2

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsToBacklightSpline()Landroid/util/Spline;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    .line 1255
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v0

    .line 1256
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1257
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    .line 1259
    sget-boolean v3, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrBrightnessFromSdr: sdr brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " backlight "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " nits "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ratio "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrNits "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBacklight "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBrightness "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayDeviceConfig"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .locals 0

    .line 1635
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getHighBlockingZoneThermalMap()Landroid/util/SparseArray;
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;
    .locals 1

    .line 1422
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .locals 0

    .line 1624
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .locals 0

    .line 1659
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-object p0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;
    .locals 0

    .line 2950
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    return-object p0
.end method

.method public getIdleStylusTimeoutMillis()I
    .locals 0

    .line 2449
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    return p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getLowBlockingZoneThermalMap()Landroid/util/SparseArray;
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .locals 0

    .line 1595
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getLuxThrottlingData()Ljava/util/Map;
    .locals 0

    .line 1439
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    return-object p0
.end method

.method public getMinNitsFromLux(F)F
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1198
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1082
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNits()[F
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1092
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    return-object p0

    .line 1094
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object p0
.end method

.method public getNitsFromBacklight(F)F
    .locals 2

    .line 1155
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    if-nez v0, :cond_0

    return v1

    .line 1159
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1160
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1163
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_2

    return v1

    .line 1166
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1167
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getNitsToBacklightSpline()Landroid/util/Spline;
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_0

    .line 1184
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    return-object p0

    .line 1186
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    .locals 0

    .line 1434
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-object p0
.end method

.method public getPowerThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .locals 0

    .line 1474
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getProximitySensor()Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 1395
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .locals 1

    .line 1575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1578
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object p0
.end method

.method public getRefreshRangeProfiles()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1584
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;
    .locals 0

    .line 1545
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    return-object p0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .locals 0

    .line 1443
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object p0
.end method

.method public getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 0

    .line 1378
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .locals 0

    .line 1382
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 1390
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getScreenOffBrightnessSensorValueToLux()[I
    .locals 0

    .line 1650
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    return-object p0
.end method

.method public getTempSensor()Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 1402
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .locals 0

    .line 1455
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 0

    if-nez p1, :cond_0

    .line 1465
    const-string p1, "default"

    .line 1466
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .locals 0

    .line 1415
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSdrToHdrRatioSpline()Z
    .locals 0

    .line 1216
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initFromDefaultValues()V
    .locals 2

    .line 1934
    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1935
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1936
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1937
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 1938
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 1939
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1940
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1941
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1942
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1943
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 1944
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v0, 0x0

    .line 1945
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 1946
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1947
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 1948
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 1949
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 1950
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1951
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1952
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    return-void
.end method

.method public initFromFile(Ljava/io/File;)Z
    .locals 8

    .line 1836
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1841
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_1

    .line 1842
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display configuration is not a file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 1846
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :try_start_1
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1849
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadName(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1850
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1851
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1852
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1853
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1855
    invoke-static {v3}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 1857
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1858
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1859
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1861
    new-instance v4, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1870
    invoke-static {v3, v4}, Lcom/android/server/display/config/HighBrightnessModeData;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 1872
    iget-boolean v6, v5, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-eqz v6, :cond_3

    iget-object v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v5, :cond_3

    .line 1874
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v7, v7, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v6, v0, v7}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(ILandroid/view/SurfaceControl$RefreshRateRange;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1879
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1880
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1881
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1882
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1883
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1882
    invoke-static {v3, v5}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1884
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 1885
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1886
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1887
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1888
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1889
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1890
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1891
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1892
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1893
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1894
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1895
    invoke-static {v3, v4}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1896
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1897
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1898
    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayConfiguration;->getSupportsVrr()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 1899
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_1

    .line 1901
    :cond_4
    const-string v3, "DisplayDeviceConfig file is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    .line 1846
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1904
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return v0
.end method

.method public final initFromGlobalXml()V
    .locals 2

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 1914
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1917
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1918
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1919
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1920
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1921
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholdsFromXml()V

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigsFromConfigXml()V

    .line 1924
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 1925
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    .line 1927
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1928
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1929
    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return-void
.end method

.method public isAutoBrightnessAvailable()Z
    .locals 0

    .line 1406
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return p0
.end method

.method public isEvenDimmerAvailable()Z
    .locals 0

    .line 1667
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVrrSupportEnabled()Z
    .locals 0

    .line 1681
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    return p0
.end method

.method public final synthetic lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .locals 3

    .line 1862
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 1863
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1868
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1864
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HBM transition point invalid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not less than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    .line 2865
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2867
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 2869
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2871
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    :cond_1
    return-void
.end method

.method public final loadAutoBrightnessAvailableFromConfigXml()V
    .locals 2

    .line 2514
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2458
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2463
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-void

    .line 2459
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2490
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2494
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-void

    .line 2491
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-void
.end method

.method public final loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 2432
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;

    move-result-object p1

    .line 2433
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2434
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2436
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2437
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2438
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2439
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 2440
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2441
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    return-void
.end method

.method public final loadAutoBrightnessConfigsFromConfigXml()V
    .locals 5

    .line 2786
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    const/4 v3, 0x0

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2473
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2478
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-void

    .line 2474
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2505
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2509
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-void

    .line 2506
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 3031
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3033
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return-void

    .line 3035
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    :cond_1
    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeModeFromConfigXml()V
    .locals 2

    .line 3041
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3042
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3041
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return-void
.end method

.method public final loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 2795
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2797
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2799
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2801
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2803
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-void
.end method

.method public final loadBrightnessChangeThresholdsFromXml()V
    .locals 1

    const/4 v0, 0x0

    .line 2791
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .locals 4

    .line 2021
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 2023
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 2033
    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2034
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_1

    .line 2026
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2027
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2026
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2029
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2030
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2029
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 2036
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_2

    .line 2039
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2040
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2039
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return-void

    .line 2043
    :cond_2
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2012
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2011
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void

    .line 2015
    :cond_0
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void
.end method

.method public final loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1996
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1998
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void

    .line 2000
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_1
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 8

    .line 2048
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    .line 2056
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v0

    .line 2057
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2059
    new-array v2, v1, [F

    .line 2060
    new-array v1, v1, [F

    .line 2062
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 2064
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Point;

    .line 2065
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, v0

    .line 2066
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v0

    if-lez v0, :cond_2

    .line 2068
    aget v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const-string v6, " < "

    const-string v7, "DisplayDeviceConfig"

    if-gez v4, :cond_1

    .line 2069
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2074
    :cond_1
    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2075
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :cond_3
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2084
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .locals 6

    .line 2520
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c0

    .line 2521
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x10700bf

    .line 2523
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2525
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    .line 2527
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 2528
    aget v5, v0, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 2534
    array-length v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2539
    :cond_1
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2540
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2541
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    .line 2535
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 2703
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2704
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .locals 2

    .line 2775
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2776
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2775
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2777
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2778
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2777
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 2781
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2782
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method public final loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 2743
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2744
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2747
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2748
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 2751
    :cond_1
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display idle brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2757
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 2760
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2762
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    goto :goto_1

    .line 2764
    :cond_3
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 2766
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2768
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-void

    .line 2770
    :cond_4
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-void
.end method

.method public final loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 2710
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2711
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2712
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2717
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2718
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2719
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2720
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 2724
    :cond_1
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 2730
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2732
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2734
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2736
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    :cond_4
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 6

    .line 1971
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1975
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object p1

    .line 1978
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    .line 1979
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1980
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/Density;

    .line 1981
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 1982
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 1983
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 1984
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1986
    :cond_1
    invoke-static {v0}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-void
.end method

.method public final loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 5

    .line 2886
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2887
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2888
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/FloatArray;->getItem()Ljava/util/List;

    move-result-object v0

    .line 2889
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    const/4 v1, 0x0

    .line 2890
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2891
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_0

    .line 2893
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 2894
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    goto :goto_1

    .line 2896
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    aput v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2901
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2902
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2903
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 2904
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    return-void

    .line 2906
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105010c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    .line 2909
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2910
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0125

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2909
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    :cond_3
    return-void
.end method

.method public final loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 2

    const/4 v0, 0x1

    .line 2997
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_0

    .line 2999
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 3002
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1110042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2307
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00a0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return-void

    .line 2311
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return-void
.end method

.method public final loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2387
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070084

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2389
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2391
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 2404
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2406
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-void

    .line 2395
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display high brightness threshold array and ambient brightness threshold array have different length: highDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", highAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2409
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2411
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2412
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2415
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 2418
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_1

    .line 2420
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2421
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2422
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2425
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2426
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2294
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2297
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    .line 2876
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenRefreshRateTimeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2877
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2879
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    .line 2878
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    .line 2881
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2987
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getIdleStylusTimeoutMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2989
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2322
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return-void

    .line 2326
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return-void
.end method

.method public final loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2336
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x107002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2338
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2340
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 2353
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2355
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-void

    .line 2344
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display low brightness threshold array and ambient brightness threshold array have different length: lowDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lowAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2358
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2359
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2360
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2361
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2364
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 2367
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_1

    .line 2369
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2370
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2371
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2374
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2375
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2285
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 11

    .line 2655
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2657
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2658
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2660
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/config/LuxThrottling;->getBrightnessLimitMap()Ljava/util/List;

    move-result-object v0

    .line 2661
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 2662
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getType()Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v2

    .line 2663
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->-$$Nest$smconvert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v3

    .line 2664
    const-string v4, "DisplayDeviceConfig"

    if-nez v3, :cond_2

    .line 2665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NBM config: unsupported map type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2668
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NBM config: duplicate map type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2672
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2674
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 2675
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 2676
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 2677
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    cmpl-float v8, v6, p1

    .line 2678
    const-string v9, "; lux="

    if-lez v8, :cond_4

    .line 2679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid NBM config: maxBacklight is greater than hbm.transitionPoint. type="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "; maxBacklight="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2686
    :cond_4
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2687
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid NBM config: duplicate lux key. type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2692
    :cond_5
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2694
    :cond_6
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2695
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final loadName(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 1967
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-void
.end method

.method public final loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 4

    .line 2227
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 2234
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getBrightnessLowestCapAllowed()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2235
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getCustomAnimationRate()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 2236
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMaxMillis()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 2237
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMinMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 2238
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;-><init>(FFII)V

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-void
.end method

.method public final loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z
    .locals 6

    .line 2188
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPowerThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2189
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2194
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 2195
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getPowerThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2197
    new-instance v2, Ljava/util/ArrayList;

    .line 2198
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 2202
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2203
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 2208
    :cond_1
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 2209
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    .line 2210
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getPowerQuotaMilliWatts()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2208
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2214
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "default"

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2215
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2219
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2220
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v2

    .line 2219
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2216
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power throttling data with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 2190
    :cond_6
    :goto_3
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No power throttling map found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 1

    .line 2648
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2650
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2246
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 2249
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 2252
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v0

    .line 2253
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2254
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2255
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V

    return-void
.end method

.method public final loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 2263
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2267
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->getRefreshRateZoneProfile()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/RefreshRateZone;

    .line 2268
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 2269
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 2270
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2272
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2269
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 3

    .line 3008
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3013
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object p1

    .line 3014
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    const/4 v0, 0x0

    .line 3015
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3016
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 6

    .line 2099
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2100
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2105
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 2106
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2108
    new-instance v2, Ljava/util/ArrayList;

    .line 2109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 2113
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2114
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 2119
    :cond_1
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 2120
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2119
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2124
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "default"

    goto :goto_2

    .line 2125
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2126
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2130
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2131
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v2

    .line 2130
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2127
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness throttling data with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    .line 2101
    :cond_6
    :goto_3
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No brightness throttling map found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V
    .locals 8

    .line 2137
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getRefreshRateThrottlingMap()Ljava/util/List;

    move-result-object p1

    .line 2138
    const-string v0, "DisplayDeviceConfig"

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 2143
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 2144
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getRefreshRateThrottlingPoint()Ljava/util/List;

    move-result-object v2

    .line 2145
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "default"

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_8

    .line 2147
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    .line 2152
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: map already exists, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2157
    :cond_3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2158
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 2159
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 2160
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: Invalid thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2161
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2166
    :cond_4
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v6

    .line 2167
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is already in the map, mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2173
    :cond_5
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2174
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    .line 2175
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-direct {v5, v7, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2173
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 2178
    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 2179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2183
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 2149
    :cond_8
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: points not found for mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    return-void

    .line 2139
    :cond_a
    :goto_4
    const-string p0, "RefreshRateThrottling: map not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 0

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2091
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No thermal throttling config found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2094
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2095
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V

    return-void
.end method

.method public final loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 2

    .line 3021
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getUsiVersion()Lcom/android/server/display/config/UsiVersion;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3023
    new-instance v0, Landroid/hardware/input/HostUsiVersion;

    .line 3024
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMajorVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 3025
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMinorVersion()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3026
    :goto_0
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-void
.end method

.method public final rawBacklightToNits(IF)F
    .locals 3

    .line 2612
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget p1, p0, p1

    aget p0, p0, v2

    invoke-static {v1, v0, p1, p0, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public final setSimpleMappingStrategyValues()V
    .locals 2

    const/4 v0, 0x0

    .line 2548
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2549
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    .line 2550
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 2551
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2553
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2811
    :cond_0
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1707
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1708
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1709
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1710
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterpolationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 1712
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLuxThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mPowerThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOffBrightnessSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTempSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 1757
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayBrightnessMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDdcAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleStylusTimeoutMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultLowBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultHighBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneProfiles= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateThrottlingMap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLowDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 1781
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 1783
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 1785
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 1787
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenOffBrightnessSensorValueToLux= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 1789
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmUsiVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHdrBrightnessData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessCapForWearBedtimeMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nmEvenDimmerBrightnessData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1796
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v1, :cond_0

    .line 1797
    invoke-virtual {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmVrrSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmDozeBrightnessSensorValueToBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 1801
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultDozeBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .locals 2

    .line 2919
    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2925
    invoke-virtual {p0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 2926
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2932
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 2934
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The timeout value cannot be negative in idle screen refresh rate timeout config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2928
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Lux values should be in ascending order in the idle screen refresh rate timeout config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method
