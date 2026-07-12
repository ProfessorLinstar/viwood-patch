.class public Lcom/android/server/display/mode/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# instance fields
.field public mAlwaysRespectAppRequest:Z

.field public final mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

.field public mAppSupportedModesByDisplay:Landroid/util/SparseArray;

.field public mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public mDefaultModeByDisplay:Landroid/util/SparseArray;

.field public mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

.field public final mExternalDisplaysConnected:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

.field public mHasArrSupport:Landroid/util/SparseBooleanArray;

.field public final mHasArrSupportFlagEnabled:Z

.field public final mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public final mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mIsDisplaysRefreshRatesSynchronizationEnabled:Z

.field public final mIsExternalDisplayLimitModeEnabled:Z

.field public mIsResolutionSwitchByMode:Z

.field public final mIsUserPreferredModeVoteEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLoggingEnabled:Z

.field public final mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

.field public mModeSwitchingType:I

.field public final mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

.field public final mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

.field public final mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

.field public mSupportedModesByDisplay:Landroid/util/SparseArray;

.field public final mSupportsFrameRateOverride:Z

.field public final mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

.field public final mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

.field public final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;


# direct methods
.method public static synthetic $r8$lambda$CBSdi5wPAhAASfeb2bCpd2owPvs(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHasArrSupport(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDisplayResolutionRangeVotingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDisplaysRefreshRatesSynchronizationEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsExternalDisplayLimitModeEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUserPreferredModeVoteEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsResolutionSwitchByMode(Lcom/android/server/display/mode/DisplayModeDirector;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsResolutionSwitchByMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMaxRefreshRateLocked(I)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetMtkSettingsExtSystemSetting(Lcom/android/server/display/mode/DisplayModeDirector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMtkSettingsExtSystemSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .locals 6

    .line 215
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-direct {v3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;)V
    .locals 9

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    const/4 v0, 0x1

    .line 184
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 224
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayResolutionRangeVotingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 225
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUserPreferredModeVoteEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    .line 227
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isExternalDisplayLimitModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    .line 229
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplaysRefreshRatesSynchronizationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    .line 231
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsBackUpSmoothDisplayAndForcePeakRefreshRateEnabled:Z

    .line 232
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->hasArrSupportFlag()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    .line 233
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 234
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    .line 235
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 236
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 237
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 238
    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getVotesStatsReporter()Lcom/android/server/display/mode/VotesStatsReporter;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 240
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 241
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    .line 243
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    .line 244
    new-instance v0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDeviceConfig()Landroid/provider/DeviceConfigInterface;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 245
    new-instance v7, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object v7, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 246
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    .line 247
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 249
    iput-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 250
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-direct {v0, p0, v8}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    .line 251
    new-instance v3, Lcom/android/server/display/mode/VotesStorage;

    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;)V

    invoke-direct {v3, v0, v6}, Lcom/android/server/display/mode/VotesStorage;-><init>(Lcom/android/server/display/mode/VotesStorage$Listener;Lcom/android/server/display/mode/VotesStatsReporter;)V

    iput-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 253
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    move-object v5, p3

    move-object v4, v3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    move-object v3, v4

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    .line 254
    new-instance v0, Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-direct {v0, v3, p3}, Lcom/android/server/display/mode/ProximitySensorObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    .line 255
    new-instance v0, Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-direct {v0, p3, v3}, Lcom/android/server/display/mode/SkinThermalStatusObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    .line 256
    new-instance v0, Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v3, p3, v2}, Lcom/android/server/display/mode/ModeChangeObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    .line 257
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v2, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;-><init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    .line 259
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRestrictDisplayModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-direct {v0, v3}, Lcom/android/server/display/mode/SystemRequestObserver;-><init>(Lcom/android/server/display/mode/VotesStorage;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    goto :goto_0

    .line 262
    :cond_0
    iput-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    :goto_0
    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 265
    invoke-interface {p3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->supportsFrameRateOverride()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    .line 266
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsResolutionSwitchByMode:Z

    return-void
.end method

.method public static switchingTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SwitchingType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 717
    :cond_0
    const-string p0, "SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY"

    return-object p0

    .line 715
    :cond_1
    const-string p0, "SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS"

    return-object p0

    .line 713
    :cond_2
    const-string p0, "SWITCHING_TYPE_WITHIN_GROUPS"

    return-object p0

    .line 711
    :cond_3
    const-string p0, "SWITCHING_TYPE_NONE"

    return-object p0
.end method


# virtual methods
.method public addExternalDisplayId(I)V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 546
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 548
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 550
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mloadIdleScreenRefreshRateConfigs(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 551
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 552
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->setupHdrRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 553
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    .line 645
    const-string v0, "DisplayModeDirector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    const-string v0, "--------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 649
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 651
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 654
    :cond_0
    const-string v2, "  mAppSupportedModesByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 655
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 657
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 660
    :cond_1
    const-string v2, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 662
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 663
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 666
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mModeSwitchingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->switchingTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAlwaysRespectAppRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->-$$Nest$mdumpLocked(Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;Ljava/io/PrintWriter;)V

    .line 670
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 671
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 673
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/VotesStorage;->dump(Ljava/io/PrintWriter;)V

    .line 676
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 674
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final filterResolutionSupport([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    const-string v1, "SWITCH_RESOLUTION_BY_MODE"

    .line 472
    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector;->getMtkSettingsExtSystemSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 471
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 476
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 478
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 479
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Discarding mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": actualWidth="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": actualHeight="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 480
    const-string p1, "DisplayModeDirector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppRequestObserver()Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;

    return-object p0
.end method

.method public getBrightnessObserver()Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-object p0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 329
    iget-object v2, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {v3, v1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 331
    iget-object v4, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/Display$Mode;

    .line 332
    iget-object v5, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Display$Mode;

    if-eqz v4, :cond_e

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 340
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 341
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v7, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 343
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v9

    iget-boolean v10, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v11, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 348
    iget-boolean v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    const/4 v9, 0x5

    const/16 v10, 0x17

    const/4 v11, 0x0

    if-eqz v8, :cond_1

    const/4 v8, 0x7

    move v12, v9

    goto :goto_0

    :cond_1
    move v8, v10

    move v12, v11

    :goto_0
    if-gt v12, v8, :cond_5

    .line 356
    invoke-virtual {v7, v3, v12, v8}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 359
    iget-boolean v6, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsResolutionSwitchByMode:Z

    if-eqz v6, :cond_2

    .line 360
    invoke-virtual {v0, v4}, Lcom/android/server/display/mode/DisplayModeDirector;->filterResolutionSupport([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 361
    iput-boolean v11, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsResolutionSwitchByMode:Z

    .line 362
    invoke-virtual {v0, v4}, Lcom/android/server/display/mode/DisplayModeDirector;->filterResolutionSupport([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v6

    .line 363
    invoke-virtual {v7, v6, v4}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 365
    :cond_2
    invoke-virtual {v7, v5, v4}, Lcom/android/server/display/mode/VoteSummary;->adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V

    .line 368
    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/server/display/mode/VoteSummary;->filterModes([Landroid/view/Display$Mode;)Ljava/util/List;

    move-result-object v6

    .line 369
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 370
    iget-boolean v8, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v8, :cond_5

    .line 371
    const-string v8, "DisplayModeDirector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found available modes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " with lowest priority considered "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {v12}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " and summary: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 371
    invoke-static {v8, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 379
    :cond_3
    iget-boolean v13, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-eqz v13, :cond_4

    .line 380
    const-string v13, "DisplayModeDirector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {v12}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and with the following summary: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 380
    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 390
    :cond_5
    :goto_2
    new-instance v8, Lcom/android/server/display/mode/VoteSummary;

    iget-boolean v13, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    .line 391
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v14

    iget-boolean v15, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    iget-boolean v11, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportsFrameRateOverride:Z

    invoke-direct {v8, v13, v14, v15, v11}, Lcom/android/server/display/mode/VoteSummary;-><init>(ZZZZ)V

    .line 394
    invoke-virtual {v8, v3, v9, v10}, Lcom/android/server/display/mode/VoteSummary;->applyVotes(Landroid/util/SparseArray;II)V

    .line 398
    invoke-virtual {v8, v7}, Lcom/android/server/display/mode/VoteSummary;->limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V

    .line 400
    invoke-virtual {v7, v6, v5}, Lcom/android/server/display/mode/VoteSummary;->selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v6

    .line 401
    iget-object v9, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    if-eqz v9, :cond_6

    .line 402
    invoke-virtual {v9, v1, v12, v6, v3}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVotesActivated(IILandroid/view/Display$Mode;Landroid/util/SparseArray;)V

    :cond_6
    if-nez v6, :cond_7

    .line 407
    const-string v6, "DisplayModeDirector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find a set of allowed modes which satisfies the votes. Falling back to the default mode. Display = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", votes = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supported modes = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 412
    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v3, v1, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 413
    new-instance v9, Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-direct {v9, v3, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    .line 414
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v11

    const/4 v8, 0x0

    move-object v10, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v2

    return-object v6

    .line 419
    :cond_7
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v4

    :goto_4
    if-nez v3, :cond_a

    .line 424
    iget-boolean v5, v7, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    if-eqz v5, :cond_b

    .line 425
    :cond_a
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    .line 426
    invoke-virtual {v7, v5}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    if-eqz v3, :cond_b

    .line 428
    invoke-virtual {v8, v5}, Lcom/android/server/display/mode/VoteSummary;->disableModeSwitching(F)V

    .line 429
    invoke-virtual {v7, v5}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 430
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-nez v3, :cond_b

    .line 431
    invoke-virtual {v8, v5}, Lcom/android/server/display/mode/VoteSummary;->disableRenderRateSwitching(F)V

    .line 436
    :cond_b
    iget v3, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    move v11, v4

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    .line 442
    :goto_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 443
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v3, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 445
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v3, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    .line 449
    :cond_d
    new-instance v9, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    new-instance v12, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, v7, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v4, v7, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v7, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v5, v7, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v12, v1, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    new-instance v13, Landroid/view/SurfaceControl$RefreshRateRanges;

    new-instance v1, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v3, v8, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v4, v8, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v8, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v5, v8, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-direct {v3, v4, v5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    invoke-direct {v13, v1, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;-><init>(Landroid/view/SurfaceControl$RefreshRateRange;Landroid/view/SurfaceControl$RefreshRateRange;)V

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 465
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    monitor-exit v2

    return-object v9

    .line 334
    :cond_e
    :goto_6
    const-string v0, "DisplayModeDirector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v2

    return-object v0

    .line 466
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 3

    .line 786
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;FFFI)V

    .line 789
    invoke-virtual {p0, v2}, Lcom/android/server/display/mode/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 790
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayObserver()Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
    .locals 0

    .line 780
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    return-object p0
.end method

.method public getHbmObserver()Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    return-object p0
.end method

.method public final getMaxRefreshRateLocked(I)F
    .locals 4

    .line 681
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    .line 683
    array-length p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object v2, p0, v1

    .line 684
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 685
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getModeSwitchingType()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 599
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getMtkSettingsExtSystemSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 492
    :try_start_0
    const-string p0, "com.mediatek.provider.MtkSettingsExt$System"

    .line 493
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 492
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 494
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 496
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get MTK settings - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayModeDirector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string p0, ""

    return-object p0
.end method

.method public getSettingsObserver()Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    return-object p0
.end method

.method public getUdpfsObserver()Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    return-object p0
.end method

.method public getVote(II)Lcom/android/server/display/mode/Vote;
    .locals 0

    .line 613
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->getVotes(I)Landroid/util/SparseArray;

    move-result-object p0

    .line 614
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/mode/Vote;

    return-object p0
.end method

.method public injectAppSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 730
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    return-void
.end method

.method public injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 735
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectDisplayDeviceConfigByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayDeviceConfig;",
            ">;)V"
        }
    .end annotation

    .line 740
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 725
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-void
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/mode/Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 745
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->injectVotesByDisplay(Landroid/util/SparseArray;)V

    return-void
.end method

.method public isExternalDisplayLocked(I)Z
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isVrrSupportedLocked(I)Z
    .locals 3

    .line 515
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupportFlagEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 516
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz p0, :cond_2

    .line 521
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/4 v1, 0x1

    .line 693
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 700
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mUdfpsObserver:Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$UdfpsObserver;->observe()V

    return-void
.end method

.method public onSwitchUser()V
    .locals 1

    .line 636
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public requestDisplayModes(Landroid/os/IBinder;I[I)V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/DisplayModeDirector;->isVrrSupportedLocked(I)Z

    move-result v1

    .line 625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 627
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSystemRequestObserver:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/mode/SystemRequestObserver;->requestDisplayModes(Landroid/os/IBinder;I[I)V

    return-void

    :catchall_0
    move-exception p0

    .line 625
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 531
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 313
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLoggingEnabled:Z

    .line 314
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$msetLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Z)V

    .line 315
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->setLoggingEnabled(Z)V

    .line 316
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/VotesStorage;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setModeSwitchingType(I)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    if-eq p1, v1, :cond_0

    .line 586
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeSwitchingType:I

    .line 587
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 589
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    if-eq v1, p1, :cond_0

    .line 563
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    .line 564
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 566
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mAlwaysRespectAppRequest:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->observe()V

    .line 281
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->observe()V

    .line 282
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->-$$Nest$mobserve(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Landroid/hardware/SensorManager;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSensorObserver:Lcom/android/server/display/mode/ProximitySensorObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/ProximitySensorObserver;->observe()V

    .line 284
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHbmObserver:Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->observe()V

    .line 285
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSkinThermalStatusObserver:Lcom/android/server/display/mode/SkinThermalStatusObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->observe()V

    .line 286
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayConfigErrorHalEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mModeChangeObserver:Lcom/android/server/display/mode/ModeChangeObserver;

    invoke-virtual {p1}, Lcom/android/server/display/mode/ModeChangeObserver;->observe()V

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 293
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
