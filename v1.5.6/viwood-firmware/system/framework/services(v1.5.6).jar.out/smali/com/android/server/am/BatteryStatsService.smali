.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field public final mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field public final mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

.field public mEntityNames:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mLastPowerStateFromRadio:I

.field public mLastPowerStateFromWifi:I

.field public final mLock:Ljava/lang/Object;

.field public volatile mMonitorEnabled:Z

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field public final mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field public final mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field public mRailsStatsCollectionEnabled:Z

.field public mStateNames:Ljava/util/Map;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSystemReady:Landroid/os/ConditionVariable;

.field public final mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

.field public final mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public static synthetic $r8$lambda$1aCrL1KQYxlLS0wPffBEKia4qAM(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopLaunch$108(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1uKH0jAFkVzTTJkWSgJZQVni4Yk(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneSignalStrength$48(Landroid/telephony/SignalStrength;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2RnfhMxRf1S72QybMHW0pG1AEl4(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOn$46(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2Za_x-OkAyZsRGRIDoud6jqPMU8(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOff$36(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ZbvDR6kcXkeNIUCcdjshWnXSaM(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartLaunch$107(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$2cAHmvokO1tg_wZZEcuWLIeaags(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessFinish$13(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3BueiV6UHR5hG8LNSs8GraPVSKM(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOff$60(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3KHPtNQjdXmQazQTwbuWyc8Dlbk(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$onLowPowerModeChanged$5(Landroid/os/PowerSaveState;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3rUJzlhZrYQ5oiX6maGsDR_OIYI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageUninstalled$88(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$3zccex7oHISt-gseufVEpZbBIN4(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteModemControllerActivity$95(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40a0_E2ErldC-wDLcHt6Ye0i6Q8(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStopRunning$106(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JjW7XwJIiSJZGc7WgZOdk6mf_E(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRadioPowerState$65(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4_L017BN9XQBcztYd4QNBiVHALU(Lcom/android/server/am/BatteryStatsService;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$onCleanupUser$8(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$56b8zMgEX_p_ptd2j1fMfLGcmUw(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$updateForegroundTimeIfOnBattery$100(ILjava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$5Dn201ryqKCHVmxl0uP3DuW4qQc(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneState$50(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$60xjkTzlo_XjchQLFyfzj__3o3s(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUserActivity$41(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$7etxBG5oBgaLj1M5iGKaBXuG8O8(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneDataConnectionState$49(IZIIIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$8JM5MhNddIBqh73dzjAuFa66X5Y(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteDeviceIdleMode$86(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$AEWP8qtCZLdhfQP4Jto5oo3q3R8(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteVibratorOn$35(IJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ai7ZnLCIrHgKxq3zj_6LPPEKUo8(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$scheduleWriteToDisk$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Bl2NAzncEY4CERUQf2yMNxE_Bks(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartSensor$33(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CIOtHUdIWKZT2Pb9BwGHMy34680(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmStart$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$CvQiPKO5k22uQf8SPuDwEZUYD2w(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetCamera$63(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$D-MLJNUlBvQ5uPg53HYrMuh7rok(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanReset$91(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$E2zZySja-QLWcx-iSOhrqHJf6yg(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$97(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$EptPGuQSOwroFEdHrFLDXbtnbXo(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartAudio$53(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ftytodr6oNMHE8mmE3YRUz2HX1k(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncFinish$17(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ga7cv1gJzbv-DHnYiIGRaAisI3k(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStarted$74(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$GqBpfKTCt7r9HglrAcC-I_LN8-E(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobFinish$19(Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gvr-7ZKRjOER4wcajtOLu7aThcY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopVideo$56(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$I4HupAeCX0MP1z3E_STEGxN3UnI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinishFromSource$32(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFhzeNKV23kO-pimm_OcDthJmPs(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartCamera$61(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$IabXb9gHSqwc43BsnsbE_mP-5CQ(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetVideo$58(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$K1GdpdqsgXyDT_MmuIn_iqYTG5U(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteSyncStart$16(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KEUFOs7T3pqu1K5KSNKgHuowa2U(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p15}, Lcom/android/server/am/BatteryStatsService;->lambda$noteChangeWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KEeKc4sRXh5XaBPp5rkOnDhVsg0(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$notePackageInstalled$87(Ljava/lang/String;JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KbIILFaoZRfUTKIZpT2c3D2hxKA(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$2()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LFzJO_XlKSRWF_hb_wSeNAZGaVU(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$98(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$LHHtqCn9yX30FAHeGjso4HNbj1o(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStoppedFromSource$83(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_bq2aJIuy6ao-9wkN4k08GyMdg(Lcom/android/server/am/BatteryStatsService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->lambda$onUserRemoved$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqiolLdPC6t1W7NovGXCX2XTxN4(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$reportExcessiveCpu$104(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OnbgsTCNyXR6NrrFcSS2fDoMBjk(Lcom/android/server/am/BatteryStatsService;JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$createPowerStatsScheduler$1(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzUBjZsuPSwb5NudFzwOUkEqJx4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PCwM-7iw-1PbupolUlFOWq4Pcy0(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsChanged$37(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYuHBTuqV08a9r0rAYn7jXZJlx8(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBluetoothControllerActivity$94(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QCm1Z6ZHhURABdBXs610YJBmQTs(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 786
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$QHB9wdOiuQcdDBiazhM3T7y4zdk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlKekjKgi7rEeeEd6DQT0K107P8(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiStopped$68(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqDpq1tf8PeA6zDrbCkkVFeF5Hg(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenBrightness$40(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TWGTasgDsMoe4tQf4whMg_QYxT8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkInterfaceForTransports$84(Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TsgteX6Cqfwovz6Fm5fYPWaBPP4(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastDisabled$77(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwmWdLOeLvEzPz9Ao4BjfPlNkiw(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartVideo$55(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TxFLL1QhxJEODOr9EiQ_Z4_ogOU(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleasedFromSource$79(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwCbIz-g_CPidtnuo34q3nXKi3w(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquired$72(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$VEKXtCZT__VcqiM9431_LON32OI(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockFinish$31(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDeM8T9bDQ3TxyOMxnevQ8uAboc(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiControllerActivity$93(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W_m_pC8qgzHLEsmltX2zAZ9pPHU(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteGpsSignalQuality$38(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xlgb0QL12zWhyhEZsJj3wtpNlYA(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFlashlightOn$59(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YPVH1fkeYiuI_ZyRfVy_MhQAmwc(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteAlarmFinish$23(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YS5UPlTwGM0lcQKIspBYovN4mNQ(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockAcquiredFromSource$78(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YSSoKtuOfeC-pu2GlOBeY-KWqHs(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunningChanged$67(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$YvcUzo2V1BJoZIdqGiH0_pdXOFY(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopSensor$34(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_E_6wE6nKqYvLRHhz8EbEluJ12I(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelockFromSource$28(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_XQtArHfzmT6bWDc98Smjj2N4hU(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOn$51(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aHB8iQ1wo1I0_3d-C0dXoZ1MT0A(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStart$29(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSyIcVg0mDlkGVxzBoJp1TKGPQ8(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStopped$75(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5MQqLcI7cEyfhOYxX7Rh2WCdnQ(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobsDeferred$20(IIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bQPheCpAfogSMCmRtZ2jQPi79RM(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiMulticastEnabled$76(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cPSYBn-mqsEpuW4e2D5tsmd9aTw(Lcom/android/server/am/BatteryStatsService;IJIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteMobileRadioPowerState$45(IJIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ciMg9FlozhJ3llhSoybBUr31n7w(Lcom/android/server/am/BatteryStatsService;)D
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$new$0()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$dYC84f6xdiIlDy80ISXqT8e6cGU(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteServiceStartRunning$105(ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_iR63TEbtw6XpYTwjEOPpZliNQ(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteFullWifiLockReleased$73(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$eo1mW3o7ng_z3xqZJ2Qy2wsrsaE(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteEvent$15(ILjava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$gP6_SHv4O0AlMf6V-gDjL6YqYXk(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetAudio$57(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$giUAKVJb_tpjuVRO4-IS-I_tPNk(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiScanStartedFromSource$80(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$hRy7dLSx4IfCuJ-vlPxMGBdmc8c(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiState$69(ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hrcE20PH0CEA0UOlvjqhV4dNSFY(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteJobStart$18(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iSuuQzTLRfjm1jElqn8K_huq8VI(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteConnectivityChanged$44(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$iW9S28e_Nc4pRhYyRF402vVykYg(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p10}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStartWakelock$24(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$jtXXNzC3pXJGy7mQd97vAtNDKp8(Lcom/android/server/am/BatteryStatsService;ZIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$updateBatteryStatsOnActivityUsage$102(ZIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2LV_LHBuOfCztSSx8z4PzMJ8i8(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/am/BatteryStatsService;->lambda$noteLongPartialWakelockStartFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ksppEni-y1t1rmkoTm8ntlbzfcU(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakeUp$42(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$m0B7ml1VR-qc-rStjDPMCc_2b90(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteScreenState$39(IIIJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mQ47ZIdMIFpfurd5PnoaSiktKuw(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWakupAlarm$21(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$maEh_77a7IFLNHY95bdoNasQLaY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopAudio$54(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nDz09w8XvVp2IiJzEeVzlEBoCuk(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$notePhoneOff$47(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNiFUD5Hg2kBtBcDlY2zVHfl29w(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRunning$66(Landroid/os/WorkSource;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJY0x-n8fCvkoTcsgx9wPQDjqwI(Lcom/android/server/am/BatteryStatsService;IZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiSupplicantStateChanged$70(IZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSxO7jxz5Ta17BvhtNx-T2Ena9U(Lcom/android/server/am/BatteryStatsService;IJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$removeUid$7(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$pdWI2hSg2S6GhRp-2t_0IxGhaws(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->lambda$noteNetworkStatsEnabled$85()V

    return-void
.end method

.method public static synthetic $r8$lambda$peRNQKiPI_V5r54aYz9lstU7S9A(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessStart$10(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$poVe73UtdkAokPl7DWl5pZTVg7o(Lcom/android/server/am/BatteryStatsService;IIJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteUidProcessState$14(IIJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$puwRmEc5LyEa1LyUwKP5muYaQyY(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopCamera$62(IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$quPvBsxVJfQTfKA32wJni1_R90E(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->lambda$noteInteractive$43(ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$rw7HOHKOPOqR8jW-abWVTR5BeKs(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStopped$90(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3mPUmSdDo7gVAnV99W_JqRwzyI(Lcom/android/server/am/BatteryStatsService;IJ[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCpuWakingActivity$3(IJ[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFQz7DB9bDL3bie1hVBNp1wlM0g(Lcom/android/server/am/BatteryStatsService;JJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteCurrentTimeChanged$101(JJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8vSJjtTcZv6Pk5qWG288PR7TA0(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$takeUidSnapshotsAsync$99([ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPcBn70Mo5l8wpUFYuEnNmT-25I(Lcom/android/server/am/BatteryStatsService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessDied$103(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$urOovnjOKNNkoo7jyT-IA30T0S0(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteResetFlashlight$64(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vLt9HebbnK7vzU1AuoOmeTlgDO4(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/am/BatteryStatsService;->lambda$setBatteryState$96(IIIIIIIIJJJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGrzANiPC9RXOPQIsi5L0I6qPdM(Lcom/android/server/am/BatteryStatsService;JJ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiOff$52(JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4iD39uC1vxdastdvuGFCCqpb24(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessAnr$12(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$x74EpGX_JPiEFqkuNlwPqOyYx8I(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiBatchedScanStartedFromSource$82(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xX2sjpoWKQc8CQoecsmzt1fBhto(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanResults$92(Landroid/os/WorkSource;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xfPUKft_-4Ta76a2n-gknp123p4(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteBleScanStarted$89(Landroid/os/WorkSource;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxJfqbRWkf5GuOgrGTepkkEodyA(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BatteryStatsService;->lambda$noteProcessCrash$11(Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4KWsHBUrEJ3mKeXD_NI-HKR8Xw(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BatteryStatsService;->lambda$noteStopWakelock$25(IILjava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBNSWELwQzYyjpSOnaL-h9h-3Eo(Lcom/android/server/am/BatteryStatsService;IJJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->lambda$noteWifiRssiChanged$71(IJJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/am/BatteryStatsService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/BatteryStatsService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/am/BatteryStatsService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerStatsUidResolver(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/power/stats/PowerStatsUidResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mawaitCompletion(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisBatteryUsageStatsAccumulationSupported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 12

    .line 355
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 197
    new-instance v11, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct {v11}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    iput-object v11, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    .line 199
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {v0}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    .line 205
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 206
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 207
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    const-string v2, "?"

    .line 209
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 217
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    .line 218
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    .line 220
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 221
    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    .line 223
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    .line 225
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    .line 228
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 230
    iput v0, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 232
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    .line 338
    new-instance v0, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 356
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 357
    new-instance v8, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v8, p0}, Lcom/android/server/am/BatteryStatsService$3;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    .line 367
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "batterystats-handler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 368
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 369
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    .line 370
    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda94;-><init>(Landroid/os/ConditionVariable;)V

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    new-instance v3, Lcom/android/internal/os/MonotonicClock;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "monotonic_clock.xml"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 373
    new-instance v9, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v9, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 374
    new-instance v0, Lcom/android/internal/os/CpuScalingPolicyReader;

    invoke-direct {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;->read()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x10e002b

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 382
    new-instance v7, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    invoke-direct {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;-><init>()V

    .line 384
    invoke-virtual {v7, v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugHighBatteryLevel(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setResetOnUnplugAfterSignificantCharge(Z)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setMaxHistorySizeBytes(I)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->build()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    .line 391
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    move-object v7, p0

    move-object v6, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object v7, v2

    move-object v8, v3

    move-object v11, v5

    move-object v3, v9

    move-object v4, v10

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 394
    new-instance v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {v1, p1, v0, v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 395
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/server/power/stats/BatteryStatsImpl$ExternalStatsSync;)V

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 402
    new-instance v2, Lcom/android/server/power/stats/PowerStatsStore;

    invoke-direct {v2, p2, v11}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 403
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    new-instance v5, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;

    invoke-direct {v5, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda95;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 405
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BatteryStatsService;->createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x10e0011

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v5, v2

    move-object v2, v0

    .line 409
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    .line 413
    new-instance v2, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    invoke-direct {v2, v0}, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    iput-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    .line 414
    new-instance v0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    const v2, 0x117000d

    invoke-direct {v0, p1, v2, v11}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    .line 415
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "battery_usage_stats_config"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)Lcom/android/server/am/BatteryStatsService;
    .locals 0

    .line 464
    new-instance p2, Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/BatteryStatsService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 465
    iget-object p0, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setCallback(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryCallback;)V

    .line 466
    iget-object p0, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object p1, p2, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->readLocked()V

    .line 468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {p2}, Lcom/android/server/am/BatteryStatsService;->scheduleWriteToDisk()V

    return-object p2

    :catchall_0
    move-exception p1

    .line 468
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3033
    const-string p0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3034
    const-string p0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    const-string p0, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3036
    const-string p0, "  [-h] [<package.name>]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    const-string p0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3038
    const-string p0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const-string p0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    const-string p0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    const-string p0, "  --history: show only history data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    const-string p0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3045
    const-string p0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    const-string p0, "  --charged: only output data since last charged."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    const-string p0, "  --daily: only output full daily data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3048
    const-string p0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string p0, "  --reset-all: reset the stats, clearing all current and past data."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string p0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    const-string p0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3052
    const-string p0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    const-string p0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    const-string p0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    const-string p0, "  --wakeups: dump CPU wakeup history and attribution."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    const-string p0, "  --power-profile: dump the power profile constants"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3057
    const-string p0, "  --usage: write battery usage stats. Optional arguments:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3058
    const-string p0, "     --proto: output as a binary protobuffer"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    const-string p0, "     --model power-profile: use the power profile model even if measured energy is available"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    const-string p0, "  --sample: collect and dump a sample of stats for debugging purpose"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3065
    const-string p0, "  --accumulated: continuously accumulated since setup or reset-all"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    :cond_0
    const-string p0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    const-string p0, "  -h: print this help text."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    const-string p0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    const-string p0, "  enable|disable <option>"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    const-string p0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    const-string p0, "    Options are:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    const-string p0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    const-string p0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    const-string p0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    const-string p0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    .line 829
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    return-object v0

    .line 832
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 833
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method public static isBatteryUsageStatsAccumulationSupported()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method public static onlyCaller([I)Z
    .locals 5

    .line 3717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3718
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3720
    aget v4, p0, v3

    if-eq v4, v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static overrideService(Lcom/android/internal/app/IBatteryStats;)V
    .locals 0

    .line 842
    sput-object p0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method private registerStatsCallbacks()V
    .locals 5

    .line 1031
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 1032
    new-instance v1, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    .line 1035
    sget-object p0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v3, 0x2780

    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x2781

    .line 1039
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    const/16 v3, 0x277f

    .line 1043
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 1049
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v3, 0xbb8

    .line 1052
    invoke-virtual {v2, v3, v4}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v2

    .line 1053
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v2

    const/16 v3, 0x27e1

    .line 1049
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .locals 1

    .line 925
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidAdded(II)V

    const/16 p0, 0x2b

    const/4 v0, 0x1

    .line 926
    invoke-static {p0, p2, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final awaitCompletion()V
    .locals 2

    .line 784
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 785
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda80;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public computeBatteryScreenOffRealtimeMs()J
    .locals 6

    .line 1412
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs_enforcePermission()V

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1415
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1416
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v1

    .line 1418
    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 1419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public computeBatteryTimeRemaining()J
    .locals 5

    .line 1394
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1395
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const-wide/16 v3, 0x3e8

    .line 1396
    div-long/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 1397
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public computeChargeTimeRemaining()J
    .locals 5

    .line 1403
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1404
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const-wide/16 v3, 0x3e8

    .line 1405
    div-long/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 1406
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createPowerStatsScheduler(Landroid/content/Context;)Lcom/android/server/power/stats/PowerStatsScheduler;
    .locals 16

    move-object/from16 v0, p0

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v8, v1

    .line 423
    new-instance v11, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;

    invoke-direct {v11, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    .line 429
    new-instance v2, Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;

    invoke-direct {v3, v1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda102;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 430
    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    sget-object v12, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v13, v0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance v14, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;

    invoke-direct {v14, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iget-object v15, v0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v2 .. v15}, Lcom/android/server/power/stats/PowerStatsScheduler;-><init>(Ljava/lang/Runnable;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/PowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    return-object v2
.end method

.method public final doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3

    add-int/lit8 p2, p2, 0x1

    .line 3172
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 3173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing option argument for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p3, "--enable"

    goto :goto_0

    :cond_0
    const-string p3, "--disable"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3174
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    .line 3177
    :cond_1
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 3183
    :cond_2
    const-string/jumbo v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3185
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3186
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3187
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 3188
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3189
    :cond_3
    const-string/jumbo v0, "pretend-screen-off"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3191
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3192
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3193
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 3194
    monitor-exit v0

    return p2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 3196
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown enable/disable option: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3197
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return v1

    .line 3179
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3180
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p1

    .line 3181
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 3182
    monitor-exit p1

    return p2

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3210
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    const/4 v0, 0x1

    .line 3212
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    .line 3215
    throw p1
.end method

.method public final dumpAggregatedStats(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3107
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsScheduler;->aggregateAndDumpPowerStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 1

    .line 3096
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3097
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3098
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 3099
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3120
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3121
    const-string v0, "dump"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3122
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3123
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpEnergyConsumerStatsLocked(Ljava/io/PrintWriter;)V

    .line 3124
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpPowerProfile(Ljava/io/PrintWriter;)V
    .locals 1

    .line 3128
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3129
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpPowerProfileLocked(Ljava/io/PrintWriter;)V

    .line 3130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpPowerStatsStore(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3111
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3115
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsStore;->dumpTableOfContents(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dumpSettings(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3084
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3085
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3086
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 3088
    const-string p0, "Flags:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    com.android.server.power.optimization.streamlined_battery_stats: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 3090
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3089
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpStatsSample(Ljava/io/PrintWriter;)V
    .locals 0

    .line 3103
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpStatsSample(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    const/4 v3, 0x2

    .line 3219
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v7, "BatteryStatsService"

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_12

    :cond_0
    const/16 v6, 0x7f

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    if-eqz v0, :cond_29

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    .line 3230
    :goto_0
    array-length v5, v0

    if-ge v11, v5, :cond_28

    .line 3231
    aget-object v5, v0, v11

    const/16 v19, 0x10

    .line 3232
    const-string v2, "--checkin"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide/from16 v21, v8

    move/from16 v14, v18

    move/from16 v16, v14

    :goto_1
    move/from16 v9, v19

    move-object/from16 v8, p1

    goto/16 :goto_7

    .line 3235
    :cond_1
    const-string v2, "--history"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v13, v13, 0x8

    move-wide/from16 v21, v8

    goto :goto_1

    .line 3237
    :cond_2
    const-string v2, "--history-start"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-wide/from16 v21, v8

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_4

    or-int/lit8 v13, v13, 0x8

    add-int/lit8 v11, v11, 0x1

    .line 3240
    array-length v2, v0

    if-lt v11, v2, :cond_3

    .line 3241
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3245
    :cond_3
    aget-object v2, v0, v11

    invoke-static {v2, v7, v8}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v7

    move-wide/from16 v21, v7

    move/from16 v17, v18

    goto :goto_1

    .line 3247
    :cond_4
    const-string v2, "--history-create-events"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 3249
    array-length v2, v0

    if-lt v11, v2, :cond_5

    .line 3250
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3251
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3254
    :cond_5
    aget-object v2, v0, v11

    invoke-static {v2, v7, v8}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 3255
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3256
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3257
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 3258
    const-string v5, "Battery history create events started."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3260
    monitor-exit v2

    :goto_2
    move-object/from16 v8, p1

    move/from16 v12, v18

    :goto_3
    move/from16 v9, v19

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3261
    :cond_6
    const-string v2, "-c"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/lit8 v13, v13, 0x10

    move-object/from16 v8, p1

    move/from16 v14, v18

    goto :goto_3

    .line 3264
    :cond_7
    const-string v2, "--proto"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v8, p1

    move/from16 v15, v18

    goto :goto_3

    .line 3266
    :cond_8
    const-string v2, "--charged"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    or-int/2addr v13, v3

    :goto_4
    move-object/from16 v8, p1

    goto :goto_3

    .line 3268
    :cond_9
    const-string v2, "--daily"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    or-int/lit8 v13, v13, 0x4

    goto :goto_4

    .line 3270
    :cond_a
    const-string v2, "--reset-all"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3271
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3272
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3273
    :try_start_1
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3275
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsStore;->reset()V

    .line 3276
    const-string v5, "Battery stats and history reset."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3279
    :cond_b
    const-string v2, "--reset"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3280
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3281
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3282
    :try_start_2
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked(I)V

    .line 3284
    const-string v5, "Battery stats reset."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3286
    monitor-exit v2

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 3287
    :cond_c
    const-string v2, "--write"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3288
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3289
    const-string v2, "dump"

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3290
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3291
    :try_start_3
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    .line 3292
    const-string v5, "Battery stats written."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3294
    monitor-exit v2

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 3295
    :cond_d
    const-string v2, "--new-daily"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3296
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3297
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3298
    :try_start_4
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 3299
    const-string v5, "New daily stats written."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3301
    monitor-exit v2

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 3302
    :cond_e
    const-string v2, "--read-daily"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3303
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3304
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3305
    :try_start_5
    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/server/power/stats/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 3306
    const-string v5, "Last daily stats read."

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    monitor-exit v2

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 3309
    :cond_f
    const-string v2, "--enable"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "enable"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move/from16 v2, v18

    goto/16 :goto_9

    .line 3316
    :cond_11
    const-string v2, "--disable"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "disable"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 3323
    :cond_13
    const-string v2, "-h"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3324
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3326
    :cond_14
    const-string v2, "--settings"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3327
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    return-void

    .line 3329
    :cond_15
    const-string v2, "--cpu"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3330
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    return-void

    .line 3332
    :cond_16
    const-string v2, "--measured-energy"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3333
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    return-void

    .line 3335
    :cond_17
    const-string v2, "--power-profile"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3336
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    return-void

    .line 3338
    :cond_18
    const-string v2, "--usage"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 3341
    :goto_5
    array-length v3, v0

    if-ge v11, v3, :cond_1b

    .line 3342
    aget-object v3, v0, v11

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    const-string v5, "--proto"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "--accumulated"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_6

    :cond_19
    move/from16 v2, v18

    goto :goto_6

    :cond_1a
    move/from16 v7, v18

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_1b
    move-object/from16 v8, p1

    .line 3351
    invoke-virtual {v1, v8, v4, v7, v2}, Lcom/android/server/am/BatteryStatsService;->dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V

    return-void

    :cond_1c
    move-object/from16 v8, p1

    .line 3353
    const-string v2, "--wakeups"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3354
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v4, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3354
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    return-void

    .line 3357
    :cond_1d
    const-string v2, "--sample"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3358
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpStatsSample(Ljava/io/PrintWriter;)V

    return-void

    .line 3360
    :cond_1e
    const-string v2, "--aggregated"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3361
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;)V

    return-void

    .line 3363
    :cond_1f
    const-string v2, "--store"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3364
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStore(Ljava/io/PrintWriter;)V

    return-void

    .line 3366
    :cond_20
    const-string v2, "--store-toc"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 3367
    invoke-virtual {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpPowerStatsStoreTableOfContents(Ljava/io/PrintWriter;)V

    return-void

    .line 3369
    :cond_21
    const-string v2, "-a"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    or-int/lit8 v13, v13, 0x20

    goto/16 :goto_3

    .line 3371
    :cond_22
    const-string v2, "--debug"

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v11, v11, 0x1

    .line 3373
    array-length v2, v0

    if-lt v11, v2, :cond_23

    .line 3374
    const-string v0, "Missing time argument for --flags HEX"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3375
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3378
    :cond_23
    aget-object v2, v0, v11

    move/from16 v9, v19

    const/4 v7, 0x0

    invoke-static {v2, v9, v7}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v2

    or-int/2addr v13, v2

    goto :goto_7

    :cond_24
    move/from16 v9, v19

    const/4 v7, 0x0

    .line 3379
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_25

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3386
    :cond_25
    :try_start_6
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3387
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 3386
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    move v10, v2

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v8, v21

    goto/16 :goto_0

    .line 3389
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3390
    invoke-direct {v1, v4}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void

    .line 3317
    :goto_8
    invoke-virtual {v1, v4, v11, v0, v7}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_26

    goto/16 :goto_12

    .line 3321
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3310
    :goto_9
    invoke-virtual {v1, v4, v11, v0, v2}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_27

    goto/16 :goto_12

    .line 3314
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_28
    move-wide/from16 v21, v8

    move-object/from16 v8, p1

    move-wide/from16 v7, v21

    goto :goto_a

    :cond_29
    move-wide v7, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_a
    if-eqz v12, :cond_2a

    goto/16 :goto_12

    .line 3400
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3402
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    or-int/lit8 v13, v13, 0x40

    .line 3405
    :cond_2b
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3407
    const-string v0, "dump"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 3409
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ltz v10, :cond_2c

    and-int/lit8 v0, v13, 0xa

    if-nez v0, :cond_2c

    or-int/lit8 v0, v13, 0x2

    and-int/lit8 v13, v0, -0x11

    :cond_2c
    move v6, v13

    const/high16 v0, 0x420000

    if-eqz v15, :cond_30

    .line 3423
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v22

    if-eqz v16, :cond_2e

    .line 3428
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v2

    .line 3429
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_2d

    .line 3431
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 3434
    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3435
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3436
    new-instance v19, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v25, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v34, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v34 .. v34}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v24, v0

    move-object/from16 v26, v4

    move-object/from16 v28, v5

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v23, v19

    invoke-direct/range {v23 .. v34}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v23

    .line 3441
    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3442
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 3443
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v21, p1

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v26, v4

    move/from16 v23, v6

    move-wide/from16 v24, v7

    :try_start_a
    invoke-virtual/range {v19 .. v26}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v6, v23

    move-wide/from16 v7, v24

    .line 3445
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 3446
    :try_start_c
    monitor-exit v2

    return-void

    :catchall_6
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v6, v23

    move-wide/from16 v7, v24

    .line 3449
    :goto_b
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading checkin file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3450
    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3449
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3453
    :cond_2d
    monitor-exit v2

    goto :goto_d

    :goto_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    .line 3456
    :cond_2e
    :goto_d
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3457
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 3458
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v21, p1

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v26, v4

    move/from16 v23, v6

    move-wide/from16 v24, v7

    invoke-virtual/range {v19 .. v26}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v17, :cond_2f

    .line 3460
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    goto :goto_e

    :catchall_7
    move-exception v0

    goto :goto_f

    .line 3462
    :cond_2f
    :goto_e
    monitor-exit v2

    goto/16 :goto_12

    :goto_f
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :cond_30
    if-eqz v14, :cond_34

    .line 3465
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    if-eqz v16, :cond_32

    .line 3470
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v10

    .line 3471
    :try_start_e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v0, :cond_31

    .line 3473
    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_31

    .line 3475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3476
    array-length v3, v0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3477
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3478
    new-instance v18, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v20, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v9, v9, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v13, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v29, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    invoke-direct/range {v18 .. v29}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/power/stats/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/server/power/stats/BatteryStatsImpl$EnergyStatsRetriever;Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v18

    .line 3483
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 3484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3485
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 3487
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 3488
    :try_start_10
    monitor-exit v10

    return-void

    :catchall_8
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    .line 3491
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 3492
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3491
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3495
    :cond_31
    monitor-exit v10

    goto :goto_11

    :goto_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw v0

    .line 3498
    :cond_32
    :goto_11
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3499
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v17, :cond_33

    .line 3501
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    :cond_33
    :goto_12
    return-void

    .line 3506
    :cond_34
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3508
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Landroid/os/BatteryStats$BatteryStatsDumpHelper;

    move-object/from16 v4, p2

    move v5, v6

    move v6, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v17, :cond_35

    .line 3510
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    .line 3512
    :cond_35
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 3513
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v4, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    return-void

    :catchall_9
    move-exception v0

    .line 3409
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3410
    throw v0
.end method

.method public final dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V
    .locals 3

    .line 3135
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3136
    const-string v0, "dump"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 3138
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    .line 3139
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3140
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3141
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 3143
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    if-eqz p4, :cond_0

    .line 3146
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 3148
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p4

    .line 3149
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 3151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3155
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 3158
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3159
    invoke-virtual {v0, p0, p4}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_1

    .line 3161
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->dumpToProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3163
    :cond_1
    const-string p1, "  "

    invoke-virtual {p0, p2, p1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    .line 3165
    :try_start_3
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    if-eqz p0, :cond_2

    .line 3158
    :try_start_4
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 3166
    const-string p1, "BatteryStatsService"

    const-string p2, "Cannot close BatteryUsageStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    .line 3151
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .locals 12

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 292
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/power/PowerStatsInternal;->getStateResidencyAsync([I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    .line 297
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/power/stats/StateResidencyResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v1

    .line 305
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 306
    aget-object v3, v0, v2

    .line 307
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v5, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    .line 308
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/os/RpmStats;->getSubsystem(Ljava/lang/String;)Lcom/android/internal/os/RpmStats$PowerStateSubsystem;

    move-result-object v4

    move v5, v1

    .line 310
    :goto_1
    iget-object v6, v3, Landroid/hardware/power/stats/StateResidencyResult;->stateResidencyData:[Landroid/hardware/power/stats/StateResidency;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    .line 311
    aget-object v6, v6, v5

    .line 312
    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v8, v3, Landroid/hardware/power/stats/StateResidencyResult;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget v8, v6, Landroid/hardware/power/stats/StateResidency;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v6, Landroid/hardware/power/stats/StateResidency;->totalTimeInStateMs:J

    iget-wide v10, v6, Landroid/hardware/power/stats/StateResidency;->totalStateEntryCount:J

    long-to-int v6, v10

    invoke-virtual {v4, v7, v8, v9, v6}, Lcom/android/internal/os/RpmStats$PowerStateSubsystem;->putState(Ljava/lang/String;JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception p0

    .line 299
    const-string p1, "BatteryStatsService"

    const-string v0, "Failed to getStateResidencyAsync"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 290
    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v0

    return-void

    .line 292
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 326
    invoke-virtual {p1, p0}, Lcom/android/internal/os/RailStats;->setRailStatsAvailability(Z)V

    return-void

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V

    return-void
.end method

.method public getActiveStatistics()Lcom/android/server/power/stats/BatteryStatsImpl;
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    return-object p0
.end method

.method public getAwakeTimeBattery()J
    .locals 2

    .line 2949
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery_enforcePermission()V

    .line 2951
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 2

    .line 2957
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged_enforcePermission()V

    .line 2959
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1013
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats_enforcePermission()V

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    .line 1019
    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    .line 1017
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->shouldUpdateStats(Ljava/util/List;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const-string v0, "get-stats"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1022
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .locals 1

    .line 3591
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats_enforcePermission()V

    .line 3593
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3594
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3595
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 1

    .line 3527
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats_enforcePermission()V

    .line 3529
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3530
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3531
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3532
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 1

    .line 3559
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats_enforcePermission()V

    .line 3561
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3562
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3563
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 3

    .line 3732
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 3733
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 3734
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats$Uid;

    if-eqz p1, :cond_0

    .line 3736
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 3738
    :cond_0
    new-instance p0, Landroid/os/health/HealthStatsParceler;

    invoke-direct {p0, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object p0
.end method

.method public getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .locals 6

    .line 3928
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3929
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3930
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3931
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 3932
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_0

    .line 3930
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3933
    :goto_1
    :try_start_6
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3935
    :cond_1
    :goto_2
    const-string p0, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v2, "0"

    .line 3936
    invoke-virtual {v1, p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3935
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 3937
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public getScreenOffDischargeMah()J
    .locals 5

    .line 1425
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah_enforcePermission()V

    .line 1427
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1428
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 1429
    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 1430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getServiceType()I
    .locals 0

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public getWakeLockStats()Landroid/os/WakeLockStats;
    .locals 1

    .line 3575
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats_enforcePermission()V

    .line 3577
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3578
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3579
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 1

    .line 3543
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats_enforcePermission()V

    .line 3545
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3546
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3547
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initPowerManagement()V
    .locals 8

    .line 799
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 800
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 803
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v3, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 802
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLockedInit(ZJJ)V

    .line 805
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 805
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isCharging()Z
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1387
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isCharging()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1388
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isOnBattery()Z
    .locals 0

    .line 2897
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$createPowerStatsScheduler$1(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 7

    .line 425
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 426
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final synthetic lambda$createPowerStatsScheduler$2()Ljava/lang/Long;
    .locals 2

    .line 432
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHistory;->getStartTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0()D
    .locals 2

    .line 404
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public final synthetic lambda$noteAlarmFinish$23(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 2

    .line 1576
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1577
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1578
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

.method public final synthetic lambda$noteAlarmStart$22(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V
    .locals 2

    .line 1562
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1563
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    .line 1564
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

.method public final synthetic lambda$noteBleScanReset$91(JJ)V
    .locals 1

    .line 2805
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2806
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    .line 2807
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteBleScanResults$92(Landroid/os/WorkSource;IJJ)V
    .locals 2

    .line 2822
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2823
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2825
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

.method public final synthetic lambda$noteBleScanStarted$89(Landroid/os/WorkSource;ZJJ)V
    .locals 2

    .line 2770
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2771
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2773
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

.method public final synthetic lambda$noteBleScanStopped$90(Landroid/os/WorkSource;ZJJ)V
    .locals 2

    .line 2788
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2789
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;ZJJ)V

    .line 2791
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

.method public final synthetic lambda$noteBluetoothControllerActivity$94(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V
    .locals 10

    .line 2866
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2867
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v4, -0x1

    move-object v3, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;JJJ)V

    .line 2869
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

.method public final synthetic lambda$noteChangeWakelockFromSource$27(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 18

    move-object/from16 v0, p0

    .line 1652
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1653
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-virtual/range {v2 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1656
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$noteConnectivityChanged$44(ILjava/lang/String;JJ)V
    .locals 2

    .line 1974
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1975
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;JJ)V

    .line 1976
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

.method public final synthetic lambda$noteCpuWakingActivity$3(IJ[I)V
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteWakingActivity(IJ[I)V

    return-void
.end method

.method public final synthetic lambda$noteCurrentTimeChanged$101(JJJ)V
    .locals 2

    .line 3788
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3789
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCurrentTimeChangedLocked(JJJ)V

    .line 3790
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

.method public final synthetic lambda$noteDeviceIdleMode$86(ILjava/lang/String;IJJ)V
    .locals 2

    .line 2727
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2728
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;IJJ)V

    .line 2730
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

.method public final synthetic lambda$noteEvent$15(ILjava/lang/String;IJJ)V
    .locals 2

    .line 1448
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1449
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;IJJ)V

    .line 1450
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

.method public final synthetic lambda$noteFlashlightOff$60(IJJ)V
    .locals 2

    .line 2260
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2261
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOffLocked(IJJ)V

    .line 2262
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

.method public final synthetic lambda$noteFlashlightOn$59(IJJ)V
    .locals 2

    .line 2242
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2243
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFlashlightOnLocked(IJJ)V

    .line 2244
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

.method public final synthetic lambda$noteFullWifiLockAcquired$72(IJJ)V
    .locals 2

    .line 2495
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2496
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

    .line 2497
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

.method public final synthetic lambda$noteFullWifiLockAcquiredFromSource$78(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2592
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2593
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2595
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

.method public final synthetic lambda$noteFullWifiLockReleased$73(IJJ)V
    .locals 2

    .line 2511
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2512
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    .line 2513
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

.method public final synthetic lambda$noteFullWifiLockReleasedFromSource$79(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2610
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2611
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2613
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

.method public final synthetic lambda$noteGpsChanged$37(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 1856
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1857
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 1858
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

.method public final synthetic lambda$noteGpsSignalQuality$38(IJJ)V
    .locals 2

    .line 1872
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1873
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    .line 1874
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

.method public final synthetic lambda$noteInteractive$43(ZJ)V
    .locals 1

    .line 1958
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 1959
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteInteractiveLocked(ZJ)V

    .line 1960
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteJobFinish$19(Ljava/lang/String;IIJJ)V
    .locals 2

    .line 1518
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1519
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;IIJJ)V

    .line 1520
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

.method public final synthetic lambda$noteJobStart$18(Ljava/lang/String;IJJ)V
    .locals 2

    .line 1501
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1502
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;IJJ)V

    .line 1503
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

.method public final synthetic lambda$noteJobsDeferred$20(IIJJJ)V
    .locals 2

    .line 1531
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1532
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

    .line 1534
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

.method public final synthetic lambda$noteLongPartialWakelockFinish$31(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 2

    .line 1727
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1728
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1730
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

.method public final synthetic lambda$noteLongPartialWakelockFinishFromSource$32(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 1746
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1747
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1749
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

.method public final synthetic lambda$noteLongPartialWakelockStart$29(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 2

    .line 1690
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1691
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1693
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

.method public final synthetic lambda$noteLongPartialWakelockStartFromSource$30(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 1709
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1710
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    .line 1712
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

.method public final synthetic lambda$noteMobileRadioPowerState$45(IJIJJ)V
    .locals 10

    .line 1991
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 1993
    :try_start_0
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne v2, p1, :cond_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1995
    :cond_0
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    .line 1996
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJIJJ)Z

    .line 1998
    monitor-exit v9

    return-void

    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$noteModemControllerActivity$95(Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 9

    .line 2890
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteNetworkInterfaceForTransports$84(Ljava/lang/String;[I)V
    .locals 0

    .line 2695
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    return-void
.end method

.method public final synthetic lambda$noteNetworkStatsEnabled$85()V
    .locals 2

    .line 2711
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v0, "network-stats-enabled"

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$notePackageInstalled$87(Ljava/lang/String;JJJ)V
    .locals 2

    .line 2740
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2741
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;JJJ)V

    .line 2743
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

.method public final synthetic lambda$notePackageUninstalled$88(Ljava/lang/String;JJ)V
    .locals 2

    .line 2753
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2754
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;JJ)V

    .line 2755
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

.method public final synthetic lambda$notePhoneDataConnectionState$49(IZIIIJJ)V
    .locals 2

    .line 2064
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2065
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIIJJ)V

    .line 2067
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

.method public final synthetic lambda$notePhoneOff$47(JJ)V
    .locals 1

    .line 2030
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2031
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOffLocked(JJ)V

    .line 2032
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$notePhoneOn$46(JJ)V
    .locals 1

    .line 2014
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2015
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    .line 2016
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$notePhoneSignalStrength$48(Landroid/telephony/SignalStrength;JJ)V
    .locals 2

    .line 2046
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2047
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;JJ)V

    .line 2048
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

.method public final synthetic lambda$notePhoneState$50(IJJ)V
    .locals 9

    .line 2081
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 2082
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v8

    .line 2083
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneStateLocked(IIJJ)V

    .line 2084
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteProcessAnr$12(Ljava/lang/String;IJJ)V
    .locals 2

    .line 969
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 970
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;IJJ)V

    .line 971
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

.method public final synthetic lambda$noteProcessCrash$11(Ljava/lang/String;IJJ)V
    .locals 2

    .line 955
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;IJJ)V

    .line 957
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

.method public final synthetic lambda$noteProcessDied$103(II)V
    .locals 1

    .line 3820
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 3821
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessDiedLocked(II)V

    .line 3822
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteProcessFinish$13(Ljava/lang/String;IJJ)V
    .locals 2

    .line 981
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;IJJ)V

    .line 983
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

.method public final synthetic lambda$noteProcessStart$10(Ljava/lang/String;IJJ)V
    .locals 2

    .line 941
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 942
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;IJJ)V

    .line 943
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

.method public final synthetic lambda$noteResetAudio$57(JJ)V
    .locals 1

    .line 2206
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2207
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetAudioLocked(JJ)V

    .line 2208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteResetCamera$63(JJ)V
    .locals 1

    .line 2316
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2317
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    .line 2318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteResetFlashlight$64(JJ)V
    .locals 1

    .line 2334
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2335
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetFlashlightLocked(JJ)V

    .line 2336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteResetVideo$58(JJ)V
    .locals 1

    .line 2224
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2225
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetVideoLocked(JJ)V

    .line 2226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteScreenBrightness$40(IIJJ)V
    .locals 2

    .line 1909
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1910
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIJJ)V

    .line 1912
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

.method public final synthetic lambda$noteScreenState$39(IIIJJJ)V
    .locals 2

    .line 1890
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1891
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIIJJJ)V

    .line 1893
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

.method public final synthetic lambda$noteServiceStartLaunch$107(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 3871
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3872
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3874
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 3875
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

.method public final synthetic lambda$noteServiceStartRunning$105(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 3843
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3844
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3846
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 3847
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

.method public final synthetic lambda$noteServiceStopLaunch$108(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 3885
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3886
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3888
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 3889
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

.method public final synthetic lambda$noteServiceStopRunning$106(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .line 3857
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3858
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object p0

    .line 3860
    invoke-virtual {p0, p6, p7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 3861
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

.method public final synthetic lambda$noteStartAudio$53(IJJ)V
    .locals 2

    .line 2134
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2135
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOnLocked(IJJ)V

    .line 2136
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

.method public final synthetic lambda$noteStartCamera$61(IJJ)V
    .locals 2

    .line 2279
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2280
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

    .line 2281
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

.method public final synthetic lambda$noteStartSensor$33(IIJJ)V
    .locals 2

    .line 1763
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1764
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartSensorLocked(IIJJ)V

    .line 1765
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

.method public final synthetic lambda$noteStartVideo$55(IJJ)V
    .locals 2

    .line 2170
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2171
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOnLocked(IJJ)V

    .line 2172
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

.method public final synthetic lambda$noteStartWakelock$24(IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 14

    .line 1593
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1594
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1596
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

.method public final synthetic lambda$noteStartWakelockFromSource$26(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 2

    .line 1630
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1631
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 1633
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

.method public final synthetic lambda$noteStopAudio$54(IJJ)V
    .locals 2

    .line 2152
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2153
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAudioOffLocked(IJJ)V

    .line 2154
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

.method public final synthetic lambda$noteStopCamera$62(IJJ)V
    .locals 2

    .line 2298
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2299
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    .line 2300
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

.method public final synthetic lambda$noteStopSensor$34(IIJJ)V
    .locals 2

    .line 1804
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1805
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopSensorLocked(IIJJ)V

    .line 1806
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

.method public final synthetic lambda$noteStopVideo$56(IJJ)V
    .locals 2

    .line 2188
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2189
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVideoOffLocked(IJJ)V

    .line 2190
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

.method public final synthetic lambda$noteStopWakelock$25(IILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 13

    .line 1611
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1612
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 1614
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

.method public final synthetic lambda$noteStopWakelockFromSource$28(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V
    .locals 2

    .line 1672
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1673
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 1675
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

.method public final synthetic lambda$noteSyncFinish$17(Ljava/lang/String;IJJ)V
    .locals 2

    .line 1482
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1483
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;IJJ)V

    .line 1484
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

.method public final synthetic lambda$noteSyncStart$16(Ljava/lang/String;IJJ)V
    .locals 2

    .line 1464
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1465
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;IJJ)V

    .line 1466
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

.method public final synthetic lambda$noteUidProcessState$14(IIJJ)V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->noteUidProcessState(II)V

    .line 997
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 998
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUidProcessStateLocked(IIJJ)V

    .line 999
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

.method public final synthetic lambda$noteUserActivity$41(IIJJ)V
    .locals 2

    .line 1927
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1928
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteUserActivityLocked(IIJJ)V

    .line 1929
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

.method public final synthetic lambda$noteVibratorOff$36(IJJ)V
    .locals 2

    .line 1838
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1839
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOffLocked(IJJ)V

    .line 1840
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

.method public final synthetic lambda$noteVibratorOn$35(IJJJ)V
    .locals 2

    .line 1822
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1823
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteVibratorOnLocked(IJJJ)V

    .line 1824
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

.method public final synthetic lambda$noteWakeUp$42(Ljava/lang/String;IJJ)V
    .locals 2

    .line 1943
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1944
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;IJJ)V

    .line 1945
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

.method public final synthetic lambda$noteWakupAlarm$21(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V
    .locals 2

    .line 1547
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 1548
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    .line 1550
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

.method public final synthetic lambda$noteWifiBatchedScanStartedFromSource$82(Landroid/os/WorkSource;IJJ)V
    .locals 2

    .line 2662
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2663
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;IJJ)V

    .line 2665
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

.method public final synthetic lambda$noteWifiBatchedScanStoppedFromSource$83(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2680
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2681
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2683
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

.method public final synthetic lambda$noteWifiControllerActivity$93(Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V
    .locals 9

    .line 2846
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;JJJLandroid/app/usage/NetworkStatsManager;)V

    return-void
.end method

.method public final synthetic lambda$noteWifiMulticastDisabled$77(IJJ)V
    .locals 2

    .line 2575
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2576
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(IJJ)V

    .line 2577
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

.method public final synthetic lambda$noteWifiMulticastEnabled$76(IJJ)V
    .locals 2

    .line 2559
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2560
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(IJJ)V

    .line 2561
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

.method public final synthetic lambda$noteWifiOff$52(JJ)V
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2117
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOffLocked(JJ)V

    .line 2118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteWifiOn$51(JJ)V
    .locals 1

    .line 2098
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2099
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiOnLocked(JJ)V

    .line 2100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteWifiRadioPowerState$65(IJIJJ)V
    .locals 10

    .line 2354
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    .line 2356
    :try_start_0
    iget v2, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v2, p1, :cond_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2358
    :cond_0
    iput p1, p0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    .line 2359
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 2363
    :cond_1
    const-string v2, "inactive"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v2, "active"

    .line 2364
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi-data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2367
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRadioPowerState(IJIJJ)V

    .line 2369
    monitor-exit v9

    return-void

    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$noteWifiRssiChanged$71(IJJ)V
    .locals 2

    .line 2479
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2480
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    .line 2481
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

.method public final synthetic lambda$noteWifiRunning$66(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2386
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2387
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;JJ)V

    .line 2388
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

.method public final synthetic lambda$noteWifiRunningChanged$67(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2407
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2408
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    .line 2410
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

.method public final synthetic lambda$noteWifiScanStarted$74(IJJ)V
    .locals 2

    .line 2527
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2528
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

    .line 2529
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

.method public final synthetic lambda$noteWifiScanStartedFromSource$80(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2628
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2629
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2630
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

.method public final synthetic lambda$noteWifiScanStopped$75(IJJ)V
    .locals 2

    .line 2543
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2544
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    .line 2545
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

.method public final synthetic lambda$noteWifiScanStoppedFromSource$81(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2645
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2646
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;JJ)V

    .line 2647
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

.method public final synthetic lambda$noteWifiState$69(ILjava/lang/String;J)V
    .locals 1

    .line 2446
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 2447
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;J)V

    .line 2448
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$noteWifiStopped$68(Landroid/os/WorkSource;JJ)V
    .locals 2

    .line 2429
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2430
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;JJ)V

    .line 2431
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

.method public final synthetic lambda$noteWifiSupplicantStateChanged$70(IZJJ)V
    .locals 2

    .line 2462
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2463
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZJJ)V

    .line 2465
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

.method public final synthetic lambda$onCleanupUser$8(IJ)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 908
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    .line 909
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onLowPowerModeChanged$5(Landroid/os/PowerSaveState;JJ)V
    .locals 2

    .line 856
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 857
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePowerSaveModeLocked(ZJJ)V

    .line 859
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

.method public final synthetic lambda$onUserRemoved$9(I)V
    .locals 1

    .line 917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 918
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 919
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$removeUid$7(IJ)V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->onUidRemoved(I)V

    .line 896
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 897
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    .line 898
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$reportExcessiveCpu$104(ILjava/lang/String;JJ)V
    .locals 2

    .line 3831
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3832
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    .line 3833
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

.method public final synthetic lambda$scheduleWriteToDisk$6()V
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleWrite()V

    return-void
.end method

.method public final synthetic lambda$setBatteryState$96(IIIIIIIIJJJJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 2935
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 2936
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2939
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$setBatteryState$97(IIIIIIIIJJJJ)V
    .locals 22

    move-object/from16 v1, p0

    .line 2917
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 2918
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 2919
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->isOnBattery()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 2922
    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v7, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    move-wide/from16 v19, p15

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJJJJ)V

    .line 2925
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2927
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2933
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string v2, "battery-state"

    const/16 v3, 0x7f

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 2934
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move-object v2, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    move/from16 v4, p1

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v21, v2

    move/from16 v2, p2

    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 2927
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$setBatteryState$98(IIIIIIIIJJJJ)V
    .locals 19

    move-object/from16 v1, p0

    .line 2916
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move-object v2, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-object/from16 v18, v2

    move/from16 v2, p1

    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda104;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$takeUidSnapshotsAsync$99([ILandroid/os/ResultReceiver;)V
    .locals 9

    .line 3682
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3685
    :try_start_0
    array-length v3, p1

    .line 3686
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    .line 3687
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    .line 3689
    :try_start_1
    aget v8, p1, v7

    invoke-virtual {p0, v8}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3691
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3692
    :try_start_2
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 3693
    const-string/jumbo p1, "uid_snapshots"

    invoke-virtual {p0, p1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3694
    invoke-virtual {p2, v6, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 3691
    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3700
    :goto_2
    :try_start_5
    const-string p1, "exception"

    .line 3701
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 3700
    invoke-virtual {p2, v2, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3704
    throw p0
.end method

.method public final synthetic lambda$updateBatteryStatsOnActivityUsage$102(ZIJJ)V
    .locals 2

    .line 3801
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 3803
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move p1, p2

    move-wide p2, p3

    move-wide p4, p5

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityResumedLocked(IJJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move p1, p2

    move-wide p2, p3

    move-wide p4, p5

    .line 3805
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move-wide p5, p4

    move-wide p3, p2

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteActivityPausedLocked(IJJ)V

    .line 3807
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$updateForegroundTimeIfOnBattery$100(ILjava/lang/String;JJJ)V
    .locals 2

    .line 3768
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3771
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    .line 3772
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3773
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;JJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3775
    invoke-virtual {p0, p7, p8}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 3777
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public monitor()V
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 760
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    .line 761
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 759
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 10

    .line 1570
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmFinish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1571
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1572
    :goto_1
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1573
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1574
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1575
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 10

    .line 1556
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteAlarmStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1557
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1558
    :goto_1
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1559
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1560
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1561
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1566
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteBleScanReset()V
    .locals 8

    .line 2799
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset_enforcePermission()V

    .line 2801
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2802
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2803
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2804
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2809
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

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 9

    .line 2815
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2817
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2818
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2819
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2821
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2827
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 9

    .line 2763
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2765
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2766
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2767
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2769
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2775
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 9

    .line 2781
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2783
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2784
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2785
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2787
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2793
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 9

    .line 2855
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2857
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p1

    goto :goto_0

    .line 2862
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2863
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2865
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2871
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2858
    :goto_0
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid bluetooth data given: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    .line 1644
    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource_enforcePermission()V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1646
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 1647
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v7, v3

    .line 1648
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1649
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1651
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v4

    move/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1658
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 10

    .line 1968
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged_enforcePermission()V

    .line 1970
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1971
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1973
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda57;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1978
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

.method public varargs noteCpuWakingActivity(IJ[I)V
    .locals 7

    .line 749
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public noteCurrentTimeChanged()V
    .locals 10

    .line 3783
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3784
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3785
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3787
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3792
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

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 11

    .line 2721
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode_enforcePermission()V

    .line 2723
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2724
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2725
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2726
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2732
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

.method public noteEvent(ILjava/lang/String;I)V
    .locals 11

    .line 1436
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent_enforcePermission()V

    if-nez p2, :cond_0

    .line 1440
    const-string p0, "BatteryStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "noteEvent called with null name. code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1445
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1447
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1452
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

.method public noteFlashlightOff(I)V
    .locals 9

    .line 2254
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff_enforcePermission()V

    .line 2256
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2257
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2259
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda50;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2264
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x1a

    .line 2265
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2264
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteFlashlightOn(I)V
    .locals 9

    .line 2236
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn_enforcePermission()V

    .line 2238
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2239
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2241
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2246
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x1a

    .line 2247
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2246
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 9

    .line 2489
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired_enforcePermission()V

    .line 2491
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2492
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2494
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2499
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

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 8

    .line 2585
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2587
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2588
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2589
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2590
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2591
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2597
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 9

    .line 2505
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased_enforcePermission()V

    .line 2507
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2508
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2510
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda55;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2515
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

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 8

    .line 2603
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2605
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2606
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2607
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2609
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2615
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 10

    .line 1848
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1850
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 1851
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    .line 1852
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1853
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1855
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda82;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1860
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteGpsSignalQuality(I)V
    .locals 9

    .line 1866
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality_enforcePermission()V

    .line 1868
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1869
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1871
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda93;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1876
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

.method public noteInteractive(Z)V
    .locals 5

    .line 1953
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive_enforcePermission()V

    .line 1955
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1957
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda99;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1962
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .locals 11

    .line 1512
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish_enforcePermission()V

    .line 1514
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1515
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1516
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1517
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda64;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1522
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

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 10

    .line 1495
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart_enforcePermission()V

    .line 1497
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1500
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1505
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

.method public noteJobsDeferred(IIJ)V
    .locals 12

    .line 1527
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1528
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1529
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1530
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda109;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1536
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

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1721
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish_enforcePermission()V

    .line 1723
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1724
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1725
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1726
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1732
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

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10

    .line 1739
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource_enforcePermission()V

    if-eqz p3, :cond_0

    .line 1741
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1742
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1743
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda48;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1751
    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1684
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart_enforcePermission()V

    .line 1686
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1687
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1688
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1689
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda100;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1695
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

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10

    .line 1702
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource_enforcePermission()V

    if-eqz p3, :cond_0

    .line 1704
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1705
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1706
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1708
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1714
    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteMobileRadioPowerState(IJI)V
    .locals 12

    .line 1985
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState_enforcePermission()V

    .line 1987
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1988
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1989
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda92;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2000
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0xc

    const/4 p2, 0x0

    move/from16 v7, p4

    .line 2001
    invoke-static {p0, v7, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2000
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 10

    .line 2877
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity_enforcePermission()V

    if-nez p1, :cond_0

    .line 2880
    const-string p0, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2884
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2885
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2886
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    .line 2889
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda60;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2893
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

.method public noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .locals 3

    .line 2691
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports_enforcePermission()V

    .line 2693
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2697
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteNetworkStatsEnabled()V
    .locals 3

    .line 2706
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled_enforcePermission()V

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2710
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda63;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2715
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .locals 11

    .line 2736
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2737
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2738
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 2739
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2745
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

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 9

    .line 2749
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2750
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2751
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2752
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda77;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2757
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

.method public notePhoneDataConnectionState(IZIII)V
    .locals 13

    .line 2058
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState_enforcePermission()V

    .line 2060
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2061
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 2062
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 2063
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2069
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

.method public notePhoneOff()V
    .locals 8

    .line 2024
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff_enforcePermission()V

    .line 2026
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2027
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2028
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2029
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2034
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

.method public notePhoneOn()V
    .locals 8

    .line 2008
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn_enforcePermission()V

    .line 2010
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2011
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2012
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2013
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2018
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

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 9

    .line 2040
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength_enforcePermission()V

    .line 2042
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2043
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2044
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2045
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda67;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2050
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

.method public notePhoneState(I)V
    .locals 9

    .line 2075
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState_enforcePermission()V

    .line 2077
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2078
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2079
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2080
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2086
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

.method public noteProcessAnr(Ljava/lang/String;I)V
    .locals 10

    .line 965
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 967
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 968
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda108;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 973
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

.method public noteProcessCrash(Ljava/lang/String;I)V
    .locals 10

    .line 951
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 954
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda107;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 959
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x2

    .line 960
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 959
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteProcessDied(II)V
    .locals 3

    .line 3818
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3819
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda70;-><init>(Lcom/android/server/am/BatteryStatsService;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3824
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteProcessFinish(Ljava/lang/String;I)V
    .locals 10

    .line 977
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 978
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 979
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 980
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 985
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x0

    .line 986
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 985
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteProcessStart(Ljava/lang/String;I)V
    .locals 10

    .line 937
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 938
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 940
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 945
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x1

    .line 946
    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 945
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteResetAudio()V
    .locals 8

    .line 2200
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio_enforcePermission()V

    .line 2202
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2203
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2205
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x17

    const/4 v2, -0x1

    .line 2211
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2210
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteResetCamera()V
    .locals 8

    .line 2310
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera_enforcePermission()V

    .line 2312
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2313
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2315
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x19

    const/4 v2, -0x1

    .line 2321
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2320
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteResetFlashlight()V
    .locals 8

    .line 2328
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight_enforcePermission()V

    .line 2330
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2331
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2333
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda83;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2338
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x1a

    const/4 v2, -0x1

    .line 2339
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2338
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteResetVideo()V
    .locals 8

    .line 2218
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo_enforcePermission()V

    .line 2220
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2221
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2223
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2228
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x18

    const/4 v2, -0x1

    .line 2229
    invoke-static {v1, v2, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2228
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteScreenBrightness(II)V
    .locals 10

    .line 1903
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness_enforcePermission()V

    .line 1905
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1906
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1907
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1908
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1914
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x9

    .line 1915
    invoke-static {p0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1914
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteScreenState(III)V
    .locals 13

    .line 1882
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState_enforcePermission()V

    .line 1884
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1885
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1886
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1888
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda68;-><init>(Lcom/android/server/am/BatteryStatsService;IIIJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1896
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1d

    .line 1897
    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1896
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3867
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3868
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3870
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3877
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

.method public noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3839
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3840
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3842
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda96;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3849
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

.method public noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3881
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3882
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3884
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3891
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

.method public noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 3853
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3854
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3856
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3863
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

.method public noteStartAudio(I)V
    .locals 9

    .line 2128
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio_enforcePermission()V

    .line 2130
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2131
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2133
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda72;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x17

    .line 2139
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2138
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStartCamera(I)V
    .locals 9

    .line 2272
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera_enforcePermission()V

    .line 2275
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2276
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2278
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda84;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2283
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x19

    .line 2285
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2283
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStartSensor(II)V
    .locals 10

    .line 1757
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor_enforcePermission()V

    .line 1759
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1760
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1761
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1762
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/4 p2, 0x5

    .line 1768
    invoke-static {p2, v4, p0, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1767
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStartVideo(I)V
    .locals 9

    .line 2164
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo_enforcePermission()V

    .line 2166
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2167
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2168
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2169
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/16 v0, 0x18

    .line 2175
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2174
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    .line 1587
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock_enforcePermission()V

    .line 1589
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1590
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1592
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1598
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

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13

    .line 1623
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 1625
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1626
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1627
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1629
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1635
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteStopAudio(I)V
    .locals 9

    .line 2146
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio_enforcePermission()V

    .line 2148
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2149
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda90;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2156
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x17

    .line 2157
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2156
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStopCamera(I)V
    .locals 9

    .line 2292
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera_enforcePermission()V

    .line 2294
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2295
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2297
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x19

    .line 2303
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2302
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStopSensor(II)V
    .locals 10

    .line 1798
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor_enforcePermission()V

    .line 1800
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1801
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1802
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda78;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1808
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 1809
    invoke-static {p2, v4, p0, v5, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1808
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStopVideo(I)V
    .locals 9

    .line 2182
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo_enforcePermission()V

    .line 2184
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2185
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2187
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2192
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/16 v0, 0x18

    .line 2193
    invoke-static {v0, v4, p0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2192
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 13

    .line 1605
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock_enforcePermission()V

    .line 1607
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1610
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1616
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

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 1665
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 1667
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1668
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1669
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1671
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1677
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 10

    .line 1476
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish_enforcePermission()V

    .line 1478
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1479
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1481
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x7

    .line 1487
    invoke-static {p2, v5, p0, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1486
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 10

    .line 1458
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart_enforcePermission()V

    .line 1460
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1461
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1463
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1468
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x1

    const/4 p2, 0x7

    .line 1469
    invoke-static {p2, v5, p0, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1468
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteUidProcessState(II)V
    .locals 10

    .line 992
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 995
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1001
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

.method public noteUserActivity(II)V
    .locals 10

    .line 1921
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity_enforcePermission()V

    .line 1923
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1924
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1926
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda52;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1931
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

.method public noteVibratorOff(I)V
    .locals 9

    .line 1832
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff_enforcePermission()V

    .line 1834
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1835
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1836
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1837
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1842
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

.method public noteVibratorOn(IJ)V
    .locals 11

    .line 1816
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn_enforcePermission()V

    .line 1818
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1819
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1821
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda89;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1826
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

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 10

    .line 1937
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp_enforcePermission()V

    .line 1939
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1940
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda74;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1947
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

.method public noteWakeupSensorEvent(JII)V
    .locals 2

    .line 1774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 1778
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 1780
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 1781
    invoke-virtual {v0, p4}, Landroid/hardware/SensorManager;->getSensorByHandle(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1782
    const-string v1, "BatteryStatsService"

    if-nez v0, :cond_0

    .line 1783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown sensor handle "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " received in noteWakeupSensorEvent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gez p3, :cond_1

    .line 1788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for sensor event with sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p4, 0x4

    .line 1792
    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(IJ[I)V

    return-void

    .line 1776
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not system uid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 11

    .line 1541
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v2, "noteWakupAlarm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1542
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1543
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 1544
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1546
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1552
    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 9

    .line 2655
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2657
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2658
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2659
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2660
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2661
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda97;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2667
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 8

    .line 2673
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2675
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2676
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2677
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2679
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2685
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 10

    .line 2833
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2835
    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p1

    goto :goto_0

    .line 2840
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2841
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2842
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2843
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    .line 2845
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2849
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2836
    :goto_0
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid wifi data given: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 9

    .line 2569
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled_enforcePermission()V

    .line 2571
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2572
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2574
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2579
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

.method public noteWifiMulticastEnabled(I)V
    .locals 9

    .line 2553
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled_enforcePermission()V

    .line 2555
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2556
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2558
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2563
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

.method public noteWifiOff()V
    .locals 8

    .line 2110
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff_enforcePermission()V

    .line 2112
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2113
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2115
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x71

    const/4 v0, 0x0

    .line 2121
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2120
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiOn()V
    .locals 8

    .line 2092
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn_enforcePermission()V

    .line 2094
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2095
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2097
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/BatteryStatsService;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x71

    const/4 v0, 0x1

    .line 2103
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2102
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiRadioPowerState(IJI)V
    .locals 12

    .line 2346
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState_enforcePermission()V

    .line 2348
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2349
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2350
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2351
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;IJIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2371
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0xd

    const/4 p2, 0x0

    move/from16 v7, p4

    .line 2372
    invoke-static {p0, v7, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2371
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiRssiChanged(I)V
    .locals 9

    .line 2473
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged_enforcePermission()V

    .line 2475
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2476
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2477
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2478
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2483
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

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 9

    .line 2379
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2381
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2382
    :goto_1
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2383
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2385
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2390
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x72

    const/4 v0, 0x1

    .line 2392
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2390
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 10

    .line 2399
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2401
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 2402
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    .line 2403
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2404
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2406
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda54;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2412
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/16 v0, 0x72

    .line 2413
    invoke-static {v0, p2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    const/4 p0, 0x0

    .line 2415
    invoke-static {v0, p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2412
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiScanStarted(I)V
    .locals 9

    .line 2521
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted_enforcePermission()V

    .line 2523
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2524
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2526
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda75;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2531
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

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 8

    .line 2621
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2623
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2624
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2625
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2627
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda56;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2632
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteWifiScanStopped(I)V
    .locals 9

    .line 2537
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped_enforcePermission()V

    .line 2539
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2540
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2542
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda53;-><init>(Lcom/android/server/am/BatteryStatsService;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2547
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

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 8

    .line 2638
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2640
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2641
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2642
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2643
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2644
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda62;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2649
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 8

    .line 2441
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState_enforcePermission()V

    .line 2443
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2444
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2445
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda42;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2450
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

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 9

    .line 2422
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped_enforcePermission()V

    if-eqz p1, :cond_0

    .line 2424
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 2425
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2426
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2427
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2428
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2433
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x72

    const/4 v0, 0x0

    .line 2434
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2433
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 10

    .line 2456
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged_enforcePermission()V

    .line 2458
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2459
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2461
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda37;-><init>(Lcom/android/server/am/BatteryStatsService;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2467
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

.method public onCleanupUser(I)V
    .locals 5

    .line 904
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 905
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 906
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda105;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 911
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 9

    .line 852
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 855
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda88;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/PowerSaveState;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 861
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

.method public onSystemReady()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->onSystemReady(Landroid/content/Context;)V

    .line 631
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->start(Z)V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 915
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 921
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final populatePowerEntityMaps()V
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    invoke-virtual {v0}, Landroid/power/PowerStatsInternal;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 270
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 271
    aget-object v3, v0, v2

    .line 272
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    .line 273
    :goto_1
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 274
    aget-object v6, v6, v5

    .line 275
    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 278
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public publish()V
    .locals 2

    .line 474
    new-instance v0, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService-IA;)V

    const-class v1, Landroid/os/BatteryStatsInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 475
    const-string v0, "batterystats"

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public removeIsolatedUid(II)V
    .locals 1

    .line 931
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/PowerStatsUidResolver;->noteIsolatedUidRemoved(II)V

    const/4 p0, -0x1

    const/4 p2, 0x0

    const/16 v0, 0x2b

    .line 932
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public removeUid(I)V
    .locals 5

    .line 892
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 894
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;IJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 900
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportExcessiveCpu(ILjava/lang/String;JJ)V
    .locals 10

    .line 3829
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3830
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3835
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

.method public resetBattery(Z)V
    .locals 0

    .line 3979
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery_enforcePermission()V

    .line 3981
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    return-void
.end method

.method public scheduleWriteToDisk()V
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 883
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBatteryLevel(IZ)V
    .locals 0

    .line 3957
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel_enforcePermission()V

    .line 3959
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    return-void
.end method

.method public setBatteryState(IIIIIIIIJ)V
    .locals 20

    move-object/from16 v1, p0

    .line 2905
    invoke-super {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState_enforcePermission()V

    .line 2907
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2908
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 2910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2913
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v3, p1

    move/from16 v2, p3

    :try_start_1
    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJJJJ)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2943
    monitor-exit v18

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    :goto_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setChargerAcOnline(ZZ)V
    .locals 0

    .line 3946
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline_enforcePermission()V

    .line 3948
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .locals 5

    .line 3748
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis_enforcePermission()V

    .line 3750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3753
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3754
    const-string v2, "battery_charging_state_update_delay"

    int-to-long v3, p1

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3758
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3759
    throw p0
.end method

.method public setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .locals 6

    .line 3902
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 3903
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3904
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3905
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 3906
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_0

    .line 3904
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3907
    :goto_1
    :try_start_6
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3909
    :cond_1
    :goto_2
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    .line 3910
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3909
    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 p1, 0x0

    .line 3913
    :try_start_7
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p1

    .line 3914
    const-string p2, "Statsd atom pull timestamps"

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3915
    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p2, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p2

    .line 3917
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3918
    const-string p1, "BatteryStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot save config file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3920
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final setPowerStatsThrottlePeriods(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    const-string p0, "([^:]+):(\\d+)\\s*"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 442
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 446
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 452
    invoke-virtual {p1, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setDefaultPowerStatsThrottlePeriodMillis(J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->setPowerStatsThrottlePeriodMillis(Ljava/lang/String;J)Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    goto :goto_0

    .line 448
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid config_powerStatsThrottlePeriods format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final shouldCollectExternalStats()Z
    .locals 4

    .line 3709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 3710
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .locals 2

    .line 810
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 815
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 817
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->shutdownLocked()V

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->shutdown()V

    .line 825
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->write()V

    return-void

    :catchall_0
    move-exception p0

    .line 819
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public suspendBatteryInput()V
    .locals 0

    .line 3990
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput_enforcePermission()V

    .line 3992
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    return-void
.end method

.method public final syncStats(Ljava/lang/String;I)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    .line 779
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 780
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method public systemServicesReady()V
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryHistoryCompressionEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 482
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->isBatteryUsageStatsAccumulationSupported()Z

    move-result v4

    .line 481
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->saveBatteryUsageStatsOnReset(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/PowerStatsStore;Z)V

    .line 483
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetBatteryHistoryOnNewSession(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    check-cast v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    .line 487
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v1, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 489
    invoke-virtual {v0, v1, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 493
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 495
    invoke-virtual {v0, v4, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 499
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 501
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 505
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 507
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 511
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 513
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    const/16 v2, 0xe

    .line 516
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 520
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 522
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 526
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 528
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 532
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 534
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 538
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 540
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 544
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 546
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 550
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 552
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    const/16 v2, 0x9

    .line 556
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 560
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 562
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 567
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 569
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 573
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setPowerStatsCollectorEnabled(IZ)V

    .line 575
    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    .line 579
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    .line 580
    invoke-virtual {v1}, Lcom/android/server/power/feature/PowerManagerFlags;->isMoveWscLoggingToNotifierEnabled()Z

    move-result v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->setMoveWscLoggingToNotifierEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->systemServicesReady()V

    .line 583
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->systemServicesReady()V

    .line 585
    const-string/jumbo v0, "network_management"

    .line 586
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 589
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 595
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 597
    :goto_1
    const-string v1, "BatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register INetworkManagement event observer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_1
    const-class v1, Landroid/power/PowerStatsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/power/PowerStatsInternal;

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->populatePowerEntityMaps()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 605
    :cond_1
    const-string v1, "BatteryStatsService"

    const-string v2, "Could not register PowerStatsInternal"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 610
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 612
    new-instance v0, Lcom/android/server/am/DataConnectionStats;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 613
    invoke-virtual {v0}, Lcom/android/server/am/DataConnectionStats;->startMonitoring()V

    .line 615
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->registerStatsCallbacks()V

    .line 616
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 607
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 5

    .line 3604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3605
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3611
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3612
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3613
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 3615
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3616
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    .line 3617
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3619
    :goto_1
    :try_start_4
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3620
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3622
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3623
    throw p0
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7

    .line 3631
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3632
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3639
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    .line 3640
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3641
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    .line 3643
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3644
    :try_start_1
    array-length v3, p1

    .line 3645
    new-array v4, v3, [Landroid/os/health/HealthStatsParceler;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 3647
    aget v6, p1, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 3649
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3656
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 3650
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3654
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3656
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3657
    throw p0
.end method

.method public takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    .locals 3

    .line 3665
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3667
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3670
    const-string p1, "exception"

    .line 3671
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x2

    .line 3670
    invoke-virtual {p2, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    .line 3676
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3677
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string v1, "get-health-stats-for-uids"

    const/16 v2, 0x7f

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)V

    .line 3681
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda79;-><init>(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unplugBattery(Z)V
    .locals 0

    .line 3968
    invoke-super {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery_enforcePermission()V

    .line 3970
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    return-void
.end method

.method public updateBatteryStatsOnActivityUsage(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 9

    .line 3797
    iget-object p4, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 3798
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 3799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3800
    iget-object v8, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;

    move-object v1, p0

    move v3, p3

    move v2, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/BatteryStatsService;ZIJJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3809
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x2a

    .line 3810
    invoke-static {p0, v3, p1, p2, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 3809
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .locals 12

    .line 3764
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3765
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3766
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 3767
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;

    move-object v3, p0

    move-object v5, p1

    move v4, p2

    move-wide v10, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda61;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3779
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
