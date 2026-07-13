.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field final mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

.field public mBatterySaverMode:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field public final mFallbackEffects:Landroid/util/SparseArray;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field final mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

.field public mOnWirelessCharger:Z

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRingerMode:I

.field final mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

.field final mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

.field public mVibrateInputDevices:Z

.field public mVibrateOn:Z

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryInfo(Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 93
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x21

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x11

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x41

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x32

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0x22

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    .line 114
    filled-new-array {v2, v3, v5, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    filled-new-array {v1, v2, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    .line 148
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .locals 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 193
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 210
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 211
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 212
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 213
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    .line 214
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    .line 215
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 216
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 217
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    const p1, 0x10700e6

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p1

    const p2, 0x107006a

    .line 221
    invoke-virtual {p0, p2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p2

    const p3, 0x107008f

    .line 223
    invoke-virtual {p0, p3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object p3

    const v0, 0x1070034

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 231
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x5

    .line 232
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p2, 0x15

    .line 234
    invoke-static {p1, v2}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 233
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public static createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;
    .locals 0

    .line 805
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    .line 806
    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_2

    .line 811
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 814
    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 816
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 3

    .line 821
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 825
    :cond_0
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 826
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 827
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 736
    :cond_0
    const-string p0, "HIGH"

    return-object p0

    .line 735
    :cond_1
    const-string p0, "MEDIUM"

    return-object p0

    .line 734
    :cond_2
    const-string p0, "LOW"

    return-object p0

    .line 733
    :cond_3
    const-string p0, "OFF"

    return-object p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 746
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 745
    :cond_0
    const-string/jumbo p0, "normal"

    return-object p0

    .line 744
    :cond_1
    const-string/jumbo p0, "vibrate"

    return-object p0

    .line 743
    :cond_2
    const-string/jumbo p0, "silent"

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 334
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

.method public final createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    .line 663
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    const-string v1, "VibrationSettings:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateInputDevices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batterySaverMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWirelessCharger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processStateCache size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 673
    const-string v1, "VibrationIntensities:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 675
    :goto_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 676
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 677
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", default: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 682
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 684
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V

    .line 685
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 686
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 691
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 693
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/16 v1, 0x11

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000012L

    .line 694
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 697
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000013L

    .line 696
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x32

    .line 699
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000016L

    .line 698
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 701
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000017L

    .line 700
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x12

    .line 703
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    .line 702
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 705
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000008L

    .line 704
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x13

    .line 707
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000014L

    .line 706
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 709
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000015L

    .line 708
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x31

    .line 711
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000009L

    .line 710
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 713
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x1050000000aL

    .line 712
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x21

    .line 715
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    .line 714
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result p0

    const-wide v1, 0x1050000000cL

    .line 716
    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentIntensity(I)I
    .locals 2

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 381
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultIntensity(I)I
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    return p0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getRampDownDuration()I
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    return p0
.end method

.method public getRampStepDuration()I
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result p0

    return p0
.end method

.method public getRequestVibrationParamsForUsages()[I
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsages()[I

    move-result-object p0

    return-object p0
.end method

.method public getRequestVibrationParamsTimeoutMs()I
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    move-result p0

    return p0
.end method

.method public final isAppRunningOnAnyVirtualDevice(I)Z
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 836
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final loadBooleanSetting(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 773
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final loadSystemSetting(Ljava/lang/String;II)I
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final notifyListeners()V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 725
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 727
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 725
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 7

    .line 241
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    .line 242
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 243
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 244
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioManager;

    move-object v1, p0

    .line 241
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V

    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V
    .locals 3

    const/4 v0, 0x2

    if-nez p5, :cond_0

    move v1, v0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {p5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 257
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 261
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 262
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 263
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 264
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 265
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    const/4 p4, -0x1

    const/4 p5, 0x0

    const/4 v1, 0x3

    invoke-interface {p3, p1, v1, p4, p5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 276
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    const-string p4, "VibrationSettings"

    invoke-interface {p3, p1, p4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    :catch_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-virtual {p2, p1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 283
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 288
    const-string/jumbo p1, "vibrate_input_devices"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 289
    const-string/jumbo p1, "vibrate_on"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 290
    const-string p1, "haptic_feedback_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 292
    const-string p1, "alarm_vibration_intensity"

    .line 293
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 294
    const-string p1, "haptic_feedback_intensity"

    .line 295
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 296
    const-string p1, "hardware_haptic_feedback_intensity"

    .line 297
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 298
    const-string/jumbo p1, "media_vibration_intensity"

    .line 299
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 300
    const-string/jumbo p1, "notification_vibration_intensity"

    .line 301
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 302
    const-string/jumbo p1, "ring_vibration_intensity"

    .line 303
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 304
    const-string p1, "keyboard_vibration_enabled"

    .line 305
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 307
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x4

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void

    :catchall_0
    move-exception p0

    .line 265
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .locals 3

    .line 782
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 482
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 490
    iget-wide v2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget p3, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 491
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 494
    :cond_0
    const-string p0, "VibrationSettings"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring screen off event triggered at uptime "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 496
    invoke-static {p2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 500
    :cond_1
    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    iget-object p3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    return p3

    .line 505
    :cond_2
    iget p2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    .line 506
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return p3

    :cond_3
    return v0

    :catchall_0
    move-exception p0

    .line 483
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .locals 4

    .line 426
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->isUidForeground(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 433
    :cond_0
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_1

    .line 435
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 438
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 439
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 443
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 447
    :cond_3
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 453
    :cond_4
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerModeLocked(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 455
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 459
    :cond_5
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    if-eqz p0, :cond_6

    .line 460
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 462
    :cond_6
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldVibrateForRingerModeLocked(I)Z
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x31

    if-eq p1, v0, :cond_0

    return v1

    .line 521
    :cond_0
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z
    .locals 2

    .line 530
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    .line 531
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-eq v0, p1, :cond_0

    return v1

    .line 537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public shouldVibrateInputDevices()Z
    .locals 0

    .line 415
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return p0
.end method

.method public final toIntensity(II)I
    .locals 0

    .line 0
    if-ltz p1, :cond_1

    const/4 p0, 0x3

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method public final toIntensity(ZI)I
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toPositiveIntensity(II)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 755
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 637
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 639
    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 640
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 641
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 642
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    .line 643
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",default:"

    .line 644
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), "

    .line 645
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/16 v2, 0x7d

    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mRingerMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 653
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOnWirelessCharger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 658
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update()V
    .locals 1

    const/4 v0, -0x2

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 543
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public final updateBatteryInfo(Landroid/content/Intent;)V
    .locals 3

    .line 629
    const-string/jumbo v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 630
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    .line 631
    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 632
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateRingerMode()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 622
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 625
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSettings(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 548
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 549
    :try_start_0
    const-string/jumbo v3, "vibrate_input_devices"

    const/4 v4, 0x0

    .line 550
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 551
    const-string/jumbo v3, "vibrate_on"

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 553
    const-string v3, "keyboard_vibration_enabled"

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    const/16 v3, 0x52

    .line 556
    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 555
    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(ZI)I

    move-result v5

    .line 557
    const-string v6, "alarm_vibration_intensity"

    const/4 v7, -0x1

    .line 558
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v6

    const/16 v8, 0x11

    .line 559
    invoke-virtual {v0, v8}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v9

    .line 557
    invoke-virtual {v0, v6, v9}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v6

    const/16 v9, 0x12

    .line 560
    invoke-virtual {v0, v9}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v10

    .line 561
    const-string v11, "haptic_feedback_intensity"

    .line 562
    invoke-virtual {v0, v11, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v11

    .line 561
    invoke-virtual {v0, v11, v10}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v11

    .line 564
    invoke-virtual {v0, v11, v10}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v10

    .line 566
    const-string v12, "hardware_haptic_feedback_intensity"

    .line 567
    invoke-virtual {v0, v12, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v12

    .line 566
    invoke-virtual {v0, v12, v10}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v12

    .line 570
    const-string/jumbo v13, "media_vibration_intensity"

    .line 571
    invoke-virtual {v0, v13, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v13

    const/16 v14, 0x13

    .line 572
    invoke-virtual {v0, v14}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v15

    .line 570
    invoke-virtual {v0, v13, v15}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v13

    const/16 v15, 0x31

    .line 573
    invoke-virtual {v0, v15}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 574
    const-string/jumbo v9, "notification_vibration_intensity"

    .line 575
    invoke-virtual {v0, v9, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v9

    .line 574
    invoke-virtual {v0, v9, v3}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v9

    .line 578
    invoke-virtual {v0, v9, v3}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v3

    .line 580
    const-string/jumbo v4, "ring_vibration_intensity"

    .line 581
    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v4

    const/16 v7, 0x21

    .line 582
    invoke-virtual {v0, v7}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v14

    .line 580
    invoke-virtual {v0, v4, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v4

    .line 584
    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    .line 585
    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v15, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v8, 0x13

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v6, 0x41

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x22

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    const-string v3, "haptic_feedback_enabled"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadBooleanSetting(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 602
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    const/16 v3, 0x12

    .line 604
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    :goto_3
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 608
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x52

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4

    :cond_4
    const/16 v3, 0x52

    .line 610
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    :goto_4
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
