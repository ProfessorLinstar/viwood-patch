.class final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPeakRefreshRate:F

.field public mDefaultRefreshRate:F

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mHandler:Landroid/os/Handler;

.field public mIsLowPower:Z

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field public final mMinRefreshRateSetting:Landroid/net/Uri;

.field public final mPeakRefreshRatePhysicalLimitEnabled:Z

.field public final mPeakRefreshRateSetting:Landroid/net/Uri;

.field public final mSwitchResolutionByMode:Landroid/net/Uri;

.field public final mVsyncLowPowerVoteEnabled:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static bridge synthetic -$$Nest$mremoveRefreshRateSetting(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->removeRefreshRateSetting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateModeSwitchingTypeSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;FFFI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 1074
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 1075
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1030
    const-string/jumbo v0, "peak_refresh_rate"

    .line 1031
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 1032
    const-string/jumbo v0, "min_refresh_rate"

    .line 1033
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 1034
    const-string/jumbo v0, "low_power"

    .line 1035
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 1036
    const-string/jumbo v0, "match_content_frame_rate"

    .line 1037
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 1038
    const-string v0, "SWITCH_RESOLUTION_BY_MODE"

    .line 1039
    invoke-static {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMtkSettingsExtSystemSetting(Lcom/android/server/display/mode/DisplayModeDirector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mSwitchResolutionByMode:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 1048
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 1050
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1076
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1077
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 1078
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVsyncLowPowerVoteEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    .line 1079
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPeakRefreshRatePhysicalLimitEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 p2, 0x0

    .line 1084
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1354
    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultPeakRefreshRate()F
    .locals 0

    .line 1171
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return p0
.end method

.method public getDefaultRefreshRate()F
    .locals 0

    .line 1166
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return p0
.end method

.method public observe()V
    .locals 4

    .line 1104
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1106
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerMinRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1107
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1109
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1111
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mSwitchResolutionByMode:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1115
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 1116
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1118
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1122
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 1124
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 1125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1150
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1151
    :try_start_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1155
    :cond_1
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_1

    .line 1157
    :cond_2
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mSwitchResolutionByMode:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1158
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fputmIsResolutionSwitchByMode(Lcom/android/server/display/mode/DisplayModeDirector;Z)V

    .line 1159
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    goto :goto_1

    .line 1152
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1161
    :cond_4
    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    .line 1139
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1141
    :cond_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1142
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1144
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1145
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeRefreshRateSetting(I)V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1335
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1337
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1339
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    .line 1180
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p2, v0

    :goto_0
    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 1187
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0063

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    move p2, p1

    goto :goto_2

    .line 1189
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p1

    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    goto :goto_1

    .line 1192
    :cond_2
    :goto_2
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return-void
.end method

.method public setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    .line 1096
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    if-nez v0, :cond_1

    .line 1098
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0066

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1
    int-to-float p1, p1

    goto :goto_2

    .line 1100
    :cond_1
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    goto :goto_1

    :goto_2
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void
.end method

.method public final updateLowPowerModeAllowedModesLocked()V
    .locals 5

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mVsyncLowPowerVoteEnabled:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1213
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1214
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1215
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1220
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 1221
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1222
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1224
    invoke-static {v2}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    .line 1221
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    .line 1227
    :cond_3
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    return-void
.end method

.method public final updateLowPowerModeSettingLocked()V
    .locals 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    .line 1200
    invoke-static {v0, v1}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1204
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    return-void
.end method

.method public final updateModeSwitchingTypeSettingLocked()V
    .locals 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1344
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I

    move-result v1

    const/4 v2, -0x2

    const-string/jumbo v3, "match_content_frame_rate"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1347
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fputmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;I)V

    .line 1349
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1236
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateRefreshRateSettingLocked(FFFI)V
    .locals 7

    .line 1277
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0, p4}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v0

    const-string v1, "DisplayModeDirector"

    if-eqz v0, :cond_0

    .line 1278
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "skip updateRefreshRateSettingLocked for external display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1288
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpl-float v0, p2, v3

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 1292
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1291
    invoke-static {v3, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1293
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, p4, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_2
    cmpl-float v0, p2, v3

    if-nez v0, :cond_3

    move-object v4, v2

    goto :goto_1

    .line 1298
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    .line 1299
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, p4, v6, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1301
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1302
    invoke-static {p1, v5}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v5

    const/4 v6, 0x3

    .line 1301
    invoke-virtual {v4, p4, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    cmpl-float v4, p3, v3

    if-nez v4, :cond_4

    goto :goto_2

    .line 1305
    :cond_4
    invoke-static {v3, p3}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    .line 1306
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    .line 1314
    const-string p2, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    move p2, p3

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    goto :goto_3

    .line 1322
    :cond_7
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_3
    if-nez p4, :cond_8

    .line 1327
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    :cond_8
    return-void
.end method

.method public final updateRefreshRateSettingLocked(I)V
    .locals 6

    .line 1247
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1248
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot update refresh rate setting: no supported modes for display "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayModeDirector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1253
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result v1

    .line 1255
    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 1257
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 1262
    :cond_1
    const-string/jumbo v3, "peak_refresh_rate"

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1265
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 1270
    :goto_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method
