.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# static fields
.field public static final BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

.field public static final BATTERY_OPTIONS:Landroid/os/Bundle;

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static LOWER_BATTERY_LEVEL_SHOW_TIP:I = 0xf

.field public static final LOW_BATTERY_LEVELS_SHUTDOWN:I

.field public static final POWER_OPTIONS:Landroid/os/Bundle;

.field public static final TAG:Ljava/lang/String; = "BatteryService"

.field public static sSystemUiPackage:Ljava/lang/String;


# instance fields
.field public final checkFastChargingHander:Lcom/android/server/BatteryService$CheckFastChargingHander;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryNearlyFullLevel:I

.field public mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mConditionVariable:Landroid/os/ConditionVariable;

.field public final mContext:Landroid/content/Context;

.field public mCriticalBatteryLevel:I

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public mInvalidCharger:I

.field public mIsFastCharging:Z

.field public mIsFirstBatteryChangedUpdate:Z

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBroadcastBatteryCapacityLevel:I

.field public mLastBroadcastBatteryCycleCount:I

.field public mLastBroadcastBatteryHealth:I

.field public mLastBroadcastBatteryLevel:I

.field public mLastBroadcastBatteryLevelCritical:Z

.field public mLastBroadcastBatteryPresent:Z

.field public mLastBroadcastBatteryStatus:I

.field public mLastBroadcastBatteryTemperature:I

.field public mLastBroadcastBatteryVoltage:I

.field public mLastBroadcastChargeCounter:I

.field public mLastBroadcastChargingState:I

.field public mLastBroadcastInvalidCharger:I

.field public mLastBroadcastMaxChargingCurrent:I

.field public mLastBroadcastMaxChargingCurrentUpdateTime:J

.field public mLastBroadcastMaxChargingVoltage:I

.field public mLastBroadcastPlugType:I

.field public mLastBroadcastVoltageUpdateTime:J

.field public mLastChargingPolicy:I

.field public final mLastHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mLastLowBatteryWarningLevel:I

.field public mLastPlugType:I

.field public mLed:Lcom/android/server/BatteryService$Led;

.field public final mLocalCallback:Landroid/os/Handler$Callback;

.field public final mLock:Ljava/lang/Object;

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPlugType:I

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public mShutdownBatteryTemperature:I

.field public mShutdownIfNoPower:Z

.field public mUpdatesStopped:Z


# direct methods
.method public static synthetic $r8$lambda$AiQShtRSNhmz_ZTL74NPp-e3gi0(Landroid/os/Message;)Z
    .locals 4

    .line 396
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 427
    :cond_0
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 432
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 436
    sget-object p0, Lcom/android/server/BatteryService;->BATTERY_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0}, Lcom/android/server/BatteryService;->sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return v1

    :catchall_0
    move-exception v0

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 435
    throw v0

    .line 414
    :cond_1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 418
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 419
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 423
    sget-object p0, Lcom/android/server/BatteryService;->POWER_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0}, Lcom/android/server/BatteryService;->sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return v1

    :catchall_1
    move-exception v0

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 422
    throw v0

    .line 398
    :cond_2
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 403
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 404
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 405
    iget-object v3, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 409
    sget-object p0, Lcom/android/server/BatteryService;->BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/BatteryService;->broadcastBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return v1

    :catchall_2
    move-exception v0

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 408
    throw v0
.end method

.method public static synthetic $r8$lambda$BGhQ0dN9QktqFNdHUq5Fcu0CN1A(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$setBatteryLevel$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$BRkwuw5AmQmc0BnIM-83mKctdPY(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$resetBattery$7(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LviqpWDIutTTwiaEiuaGMjhoNls(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$shutdownIfNoPowerLocked$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QITgs02JU2zUgONUrF7rVY3JmZw(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vwg9quKnvOG6KNXA-o38qgmIfAc(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$unplugBattery$6(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YM_7CKDUYQ7TsvkKgKjHdUFeQhI(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$setChargerAcOnline$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$egoSIcfIT8XByY8cTM2sBM4zxEA(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$shutdownIfOverTempLocked$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kI548aEkD-5ubzJcKyoIH4vQF6M(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->notifyChargingPolicyChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mBatteryNearlyFullLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChargingPolicyChangeListeners(Lcom/android/server/BatteryService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthServiceWrapper(Lcom/android/server/BatteryService;)Lcom/android/server/health/HealthServiceWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFastCharging(Lcom/android/server/BatteryService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mIsFastCharging:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastChargingPolicy(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryNearlyFullLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFastCharging(Lcom/android/server/BatteryService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsFastCharging:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setBatteryLevel(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateENotePopWindowBatteryState(Lcom/android/server/BatteryService;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->updateENotePopWindowBatteryState(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 141
    const-string v0, "com.viwoods.autoshutdown.battery_levels"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVELS_SHUTDOWN:I

    .line 153
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 348
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v2, 0x2

    .line 349
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

    .line 352
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 354
    const-string v4, "android"

    invoke-virtual {v0, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->POWER_OPTIONS:Landroid/os/Bundle;

    .line 358
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 359
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 360
    invoke-virtual {v0, v4, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_OPTIONS:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 444
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 168
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v0, -0x1

    .line 268
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const/4 v1, 0x1

    .line 283
    iput v1, p0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v2, 0x0

    .line 297
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mIsFastCharging:Z

    .line 298
    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 330
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 343
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 393
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 395
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 453
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 456
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 457
    new-instance p2, Lcom/android/server/BatteryService$CheckFastChargingHander;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$CheckFastChargingHander;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    iput-object p2, p0, Lcom/android/server/BatteryService;->checkFastChargingHander:Lcom/android/server/BatteryService$CheckFastChargingHander;

    .line 458
    new-instance p2, Lcom/android/server/BatteryService$Led;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object p2, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 459
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 460
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0139

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110241

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    .line 475
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 476
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 479
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 480
    new-instance p1, Lcom/android/server/BatteryService$1;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 491
    const-string p2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {p1, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void
.end method

.method public static broadcastBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1128
    invoke-static {p1, p3}, Lcom/android/server/BatteryService;->traceBatteryChangedBroadcastEvent(Landroid/content/Intent;Z)V

    .line 1132
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    .line 1133
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    sget-object v0, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1142
    sget-object p0, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p3, -0x1

    invoke-static {p1, p0, p3, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1442
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|current_now|current_average"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  get [-f] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    const-string v1, "    Gets the value of a battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    const-string v1, "    -f: force to get the latest property value."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  set [-f] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] <value>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1462
    const-string v0, "  suspend_input"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string v0, "    Suspend charging even if plugged in. "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1762
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_1

    .line 1763
    :try_start_0
    array-length v0, p3

    if-eqz v0, :cond_1

    const-string v0, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1795
    :cond_0
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1796
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 p0, 0x0

    invoke-direct {v9, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    .line 1764
    :cond_1
    :goto_0
    const-string p1, "Current Battery Service state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p1, :cond_2

    .line 1766
    const-string p1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  AC powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  USB powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Wireless powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Dock powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging current: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Time when the latest updated value of the Max charging current was sent via battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    .line 1775
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1773
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charge counter: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  health: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  present: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  level: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    const-string p1, "  scale: 100"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Time when the latest updated value of the voltage was sent via battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    .line 1786
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1784
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " The last voltage value sent via the battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  temperature: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1790
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  technology: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p3, p3, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1791
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charging state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charging policy: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Capacity level: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 1802
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1804
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1805
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1807
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1809
    :cond_0
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 1811
    :cond_1
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    .line 1813
    :cond_2
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-wide v2, 0x10e00000002L

    .line 1816
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1817
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1820
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1823
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1825
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-wide v2, 0x10e00000006L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1826
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-wide v2, 0x10e00000007L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1827
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1828
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-wide v2, 0x10500000009L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    const/16 v3, 0x64

    .line 1829
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1830
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-wide v2, 0x1050000000bL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1831
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1834
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-wide v1, 0x1090000000dL

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1835
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1836
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    .line 1835
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static plugType(Landroid/hardware/health/HealthInfo;)I
    .locals 1

    .line 753
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 755
    :cond_0
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 757
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 759
    :cond_2
    iget-boolean p0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 1855
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setBatteryLevel(IZ)V
    .locals 2

    .line 1670
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/4 p1, 0x1

    .line 1674
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1675
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private setChargerAcOnline(ZZ)V
    .locals 2

    .line 1661
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 p1, 0x1

    .line 1665
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1666
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private suspendBatteryInput()V
    .locals 1

    .line 1703
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1707
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 1708
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void

    .line 1704
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static traceBatteryChangedBroadcastEvent(Landroid/content/Intent;Z)V
    .locals 5

    const-wide/32 v0, 0x80000

    .line 1150
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 1152
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    const-string v3, "broadcastBatteryChanged; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const-string v3, "force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1155
    const-string p1, ",seq="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "seq"

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1157
    const-string p1, ",s="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "status"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1159
    const-string p1, ",h="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "health"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1161
    const-string p1, ",p="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "present"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1163
    const-string p1, ",l="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "level"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1165
    const-string p1, ",bl="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "battery_low"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1167
    const-string p1, ",sc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "scale"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1169
    const-string p1, ",pt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "plugged"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    const-string p1, ",v="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "voltage"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1173
    const-string p1, ",t="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "temperature"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1175
    const-string p1, ",tech="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "technology"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    const-string p1, ",invc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "invalid_charger"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1179
    const-string p1, ",mcc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "max_charging_current"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1181
    const-string p1, ",mcv="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "max_charging_voltage"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1183
    const-string p1, ",chc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "charge_counter"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1185
    const-string p1, ",cc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1187
    const-string p1, ",chs="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 1840
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .locals 2

    const-wide/32 v0, 0x80000

    .line 1844
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public final dissmissPluggedInPopupWindowIfShowing()V
    .locals 2

    .line 1730
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz p0, :cond_0

    const-string p0, "com.vivoods.shutdown"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1732
    const-string p0, "com.vivoods.updateBatteryState"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-class p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    .line 1734
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    if-eqz p0, :cond_0

    .line 1736
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "eNotePopWindowManager.dissmissPluggedInPopupWindowIfShowing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;->dissmissPluggedInPopupWindowIfShowing()V

    :cond_0
    return-void
.end method

.method public getHandlerForTest()Landroid/os/Handler;
    .locals 0

    .line 1849
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getIconLocked(I)I
    .locals 3

    .line 1320
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v0, 0x2

    const v1, 0x10809d1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const v2, 0x10809c3

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const p0, 0x10809df

    return p0

    :cond_3
    :goto_0
    const/16 p1, 0xf

    .line 1326
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 p1, 0x64

    if-lt p0, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final isPoweredLocked(I)Z
    .locals 2

    .line 591
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 594
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 598
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    .line 602
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    .line 606
    iget-boolean p0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$resetBattery$7(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 1694
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$setBatteryLevel$5(Z)V
    .locals 0

    .line 1675
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final synthetic lambda$setChargerAcOnline$4(Z)V
    .locals 0

    .line 1666
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final synthetic lambda$shutdownIfNoPowerLocked$1(Landroid/content/Intent;)V
    .locals 0

    .line 671
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->startShutdownActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$shutdownIfOverTempLocked$2(Landroid/content/Intent;)V
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->startShutdownActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$unplugBattery$6(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 1687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final logBatteryStatsLocked()V
    .locals 8

    .line 1255
    const-string v0, "failed to delete temporary dumpsys file: "

    const-string v1, "failed to close dumpsys output stream"

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 1258
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-eqz p0, :cond_6

    .line 1259
    const-string v3, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {p0, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v4, 0x0

    .line 1265
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/batterystats.dump"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1266
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1267
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v7, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1268
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const/4 v2, 0x2

    .line 1271
    invoke-virtual {p0, v3, v5, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1280
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1282
    :catch_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1286
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    move-object v4, v6

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v4, v6

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v4, v6

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v5, v4

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v5, v4

    goto :goto_2

    :catch_6
    move-exception p0

    move-object v5, v4

    goto :goto_4

    .line 1275
    :goto_2
    :try_start_4
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to write dumpsys file"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 1280
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    .line 1282
    :catch_7
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    if-eqz v5, :cond_6

    .line 1285
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1286
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 1273
    :goto_4
    :try_start_6
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to dump battery service"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_3

    .line 1280
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_5

    .line 1282
    :catch_8
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    if-eqz v5, :cond_6

    .line 1285
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1286
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_6
    if-eqz v4, :cond_4

    .line 1280
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_7

    .line 1282
    :catch_9
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_7
    if-eqz v5, :cond_5

    .line 1285
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1286
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_5
    throw p0

    :cond_6
    :goto_8
    return-void
.end method

.method public final logOutlierLocked(J)V
    .locals 8

    .line 1293
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1294
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1296
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1301
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1302
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    cmp-long v5, p1, v2

    if-gtz v5, :cond_0

    .line 1303
    iget v5, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v6, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr v5, v6

    if-lt v5, v4, :cond_0

    .line 1306
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V

    .line 1308
    :cond_0
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duration threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " discharge threshold: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " discharge: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr p1, p0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1313
    :catch_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DischargeThresholds GService string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final notifyChargingPolicyChanged()V
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget v1, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 1246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;

    .line 1249
    invoke-interface {v0, v1}, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;->onChargingPolicyChanged(I)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 1246
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 5

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    new-instance p1, Lcom/android/server/BatteryService$2;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 522
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 523
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 526
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 530
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 531
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 532
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PHASE_BOOT_COMPLETED] mPlugType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1481
    const-string v3, "current_average"

    const-string/jumbo v4, "present"

    const-string v5, "ac"

    const-string/jumbo v6, "usb"

    const-string v7, "dock"

    const-string/jumbo v9, "temp"

    const-string/jumbo v11, "level"

    const-string v13, "current_now"

    const-string v15, "counter"

    const/16 v16, 0xb

    const-string v2, "invalid"

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, -0x1

    if-nez v1, :cond_0

    .line 1482
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1484
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    .line 1485
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v12, "No property specified"

    const/16 v22, 0x1

    const-string v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :goto_0
    move/from16 v14, v21

    goto :goto_1

    :sswitch_0
    const-string/jumbo v14, "reset"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v14, v17

    goto :goto_1

    :sswitch_1
    const-string/jumbo v14, "set"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v14, v18

    goto :goto_1

    :sswitch_2
    const-string v14, "get"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v14, v19

    goto :goto_1

    :sswitch_3
    const-string/jumbo v14, "suspend_input"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v14, v22

    goto :goto_1

    :sswitch_4
    const-string/jumbo v14, "unplug"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v14, v20

    :goto_1
    packed-switch v14, :pswitch_data_0

    .line 1647
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1636
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1637
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v14, 0x0

    invoke-virtual {v2, v8, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    move/from16 v8, v22

    goto :goto_2

    :cond_6
    move/from16 v8, v20

    .line 1639
    :goto_2
    invoke-virtual {v0, v8, v10}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    goto/16 :goto_10

    :pswitch_1
    const/4 v14, 0x0

    .line 1554
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    move/from16 p2, v1

    .line 1555
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1559
    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v21

    .line 1563
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1565
    const-string v0, "No value specified"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v21

    .line 1570
    :cond_8
    :try_start_0
    iget-boolean v12, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v12, :cond_9

    .line 1571
    iget-object v12, v0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v14, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v12, v14}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1574
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v16

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {v1, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x7

    goto/16 :goto_4

    :sswitch_7
    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_8
    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x6

    goto :goto_4

    :sswitch_9
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    goto :goto_4

    :sswitch_a
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v17

    goto :goto_4

    :sswitch_b
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v19

    goto :goto_4

    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v22

    goto :goto_4

    :sswitch_d
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v20

    goto :goto_4

    :sswitch_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x9

    goto :goto_4

    :sswitch_f
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x5

    goto :goto_4

    :sswitch_10
    const-string/jumbo v2, "wireless"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v2, v18

    goto :goto_4

    :cond_a
    :goto_3
    move/from16 v2, v21

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown set option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1613
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_a

    .line 1606
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1607
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 1610
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    goto/16 :goto_a

    .line 1601
    :pswitch_5
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    goto/16 :goto_a

    .line 1597
    :pswitch_6
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    goto/16 :goto_a

    .line 1594
    :pswitch_7
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_a

    .line 1591
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    goto :goto_a

    .line 1588
    :pswitch_9
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    move/from16 v2, v22

    goto :goto_5

    :cond_b
    move/from16 v2, v20

    :goto_5
    iput-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    goto :goto_a

    .line 1585
    :pswitch_a
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    move/from16 v2, v22

    goto :goto_6

    :cond_c
    move/from16 v2, v20

    :goto_6
    iput-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    goto :goto_a

    .line 1582
    :pswitch_b
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v2, v22

    goto :goto_7

    :cond_d
    move/from16 v2, v20

    :goto_7
    iput-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    goto :goto_a

    .line 1579
    :pswitch_c
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    move/from16 v2, v22

    goto :goto_8

    :cond_e
    move/from16 v2, v20

    :goto_8
    iput-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    goto :goto_a

    .line 1576
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    move/from16 v2, v22

    goto :goto_9

    :cond_f
    move/from16 v2, v20

    :goto_9
    iput-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 1621
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v3, v22

    .line 1623
    :try_start_1
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    move/from16 v3, v20

    .line 1624
    :goto_b
    invoke-virtual {v0, v3, v10}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1627
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_10

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1628
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1631
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v21

    .line 1493
    :pswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1494
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_11

    .line 1496
    invoke-virtual {v10, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v21

    :cond_11
    const/16 v22, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    .line 1502
    iget-object v1, v0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1503
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->updateHealthInfo()V

    .line 1504
    iget-object v1, v0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    move-object v12, v3

    move-object v14, v4

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_c

    :cond_12
    move-object v12, v3

    move-object v14, v4

    .line 1507
    :goto_c
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_d
    move/from16 v2, v21

    goto/16 :goto_e

    :sswitch_11
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_d

    :cond_13
    move/from16 v2, v16

    goto/16 :goto_e

    :sswitch_12
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    const/16 v2, 0xa

    goto/16 :goto_e

    :sswitch_13
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_d

    :cond_15
    const/16 v2, 0x9

    goto/16 :goto_e

    :sswitch_14
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_d

    :cond_16
    const/16 v2, 0x8

    goto :goto_e

    :sswitch_15
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_d

    :cond_17
    const/4 v2, 0x7

    goto :goto_e

    :sswitch_16
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_d

    :cond_18
    const/4 v2, 0x6

    goto :goto_e

    :sswitch_17
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_d

    :cond_19
    const/4 v2, 0x5

    goto :goto_e

    :sswitch_18
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_d

    :cond_1a
    move/from16 v2, v17

    goto :goto_e

    :sswitch_19
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1b
    move/from16 v2, v18

    goto :goto_e

    :sswitch_1a
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_d

    :cond_1c
    move/from16 v2, v19

    goto :goto_e

    :sswitch_1b
    const-string/jumbo v1, "status"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v2, 0x1

    goto :goto_e

    :sswitch_1c
    const-string/jumbo v1, "wireless"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_d

    :cond_1e
    move/from16 v2, v20

    :goto_e
    packed-switch v2, :pswitch_data_2

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown get option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1546
    :pswitch_f
    iget v0, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_10

    .line 1530
    :pswitch_10
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_10

    .line 1534
    :pswitch_11
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_10

    .line 1527
    :pswitch_12
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_10

    .line 1543
    :pswitch_13
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_10

    .line 1521
    :pswitch_14
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_10

    .line 1515
    :pswitch_15
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_10

    .line 1512
    :pswitch_16
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_10

    .line 1509
    :pswitch_17
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_10

    .line 1539
    :pswitch_18
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_10

    .line 1524
    :pswitch_19
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_10

    .line 1518
    :pswitch_1a
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_10

    .line 1642
    :pswitch_1b
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v1, v8, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-direct {v0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    goto :goto_10

    :pswitch_1c
    const/4 v14, 0x0

    .line 1487
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1488
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    move/from16 v8, v22

    goto :goto_f

    :cond_1f
    move/from16 v8, v20

    .line 1490
    :goto_f
    invoke-virtual {v0, v8, v10}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    :goto_10
    return v20

    :sswitch_data_0
    .sparse-switch
        -0x32165859 -> :sswitch_4
        -0x204dc1f9 -> :sswitch_3
        0x18f56 -> :sswitch_2
        0x1bc62 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_e
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x3b9b7862 -> :sswitch_10
        -0x3532300e -> :sswitch_f
        -0x169c46a9 -> :sswitch_e
        -0x12f88745 -> :sswitch_d
        0xc22 -> :sswitch_c
        0x1c584 -> :sswitch_b
        0x2f2233 -> :sswitch_a
        0x3643d4 -> :sswitch_9
        0x6219b84 -> :sswitch_8
        0x23db3310 -> :sswitch_7
        0x391755fc -> :sswitch_6
        0x74cff1f7 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1c
        -0x3532300e -> :sswitch_1b
        -0x169c46a9 -> :sswitch_1a
        -0x12f88745 -> :sswitch_19
        0xc22 -> :sswitch_18
        0x1c584 -> :sswitch_17
        0x2f2233 -> :sswitch_16
        0x3643d4 -> :sswitch_15
        0x6219b84 -> :sswitch_14
        0x23db3310 -> :sswitch_13
        0x391755fc -> :sswitch_12
        0x74cff1f7 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .line 500
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 502
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 503
    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 504
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 505
    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 506
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 2

    const/4 p0, 0x0

    .line 1472
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1473
    const-string v1, "-f"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final processValuesLocked(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 770
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 773
    invoke-static {v1}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 776
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing new values: info="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mBatteryLevelCritical="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPlugType="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :try_start_0
    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v7, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v9, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v11, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v12, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v13, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget-wide v14, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :catch_0
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 799
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    if-nez p1, :cond_1

    .line 801
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    if-eq v1, v2, :cond_2

    .line 802
    :cond_1
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iput v1, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 803
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    if-nez p1, :cond_3

    .line 810
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v2, v5, :cond_3

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ne v2, v5, :cond_3

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-ne v2, v5, :cond_3

    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-ne v2, v5, :cond_3

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    if-eq v1, v2, :cond_1c

    .line 825
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mIsFastCharging:Z

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mIsFastCharging:Z

    .line 826
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/server/BatteryService;->updateENotePopWindowBatteryState(IIZ)V

    .line 828
    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    if-eq v1, v2, :cond_7

    const/16 v8, 0x58a

    const/16 v9, 0x58d

    const/16 v10, 0x589

    if-nez v2, :cond_5

    .line 831
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v1, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 832
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 834
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 835
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 836
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 837
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 838
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 837
    invoke-virtual {v1, v8, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 839
    iget-object v2, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 843
    iget-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v1, v2, :cond_7

    .line 845
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v1, v8

    .line 847
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 848
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xaaa

    .line 847
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 850
    iput-wide v6, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move v8, v4

    goto :goto_2

    :cond_5
    if-nez v1, :cond_7

    .line 854
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 855
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v11, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v1, v11

    cmp-long v11, v11, v6

    if-eqz v11, :cond_6

    cmp-long v11, v1, v6

    if-eqz v11, :cond_6

    .line 859
    new-instance v11, Landroid/metrics/LogMaker;

    invoke-direct {v11, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 860
    invoke-virtual {v11, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 861
    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 863
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x58c

    .line 862
    invoke-virtual {v11, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 864
    iget v1, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 865
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 864
    invoke-virtual {v11, v8, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 866
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 867
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x58b

    .line 866
    invoke-virtual {v11, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 868
    iget-object v1, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v11}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 870
    :cond_6
    iput-wide v6, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_7
    move v8, v3

    move-wide v1, v6

    .line 873
    :goto_2
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v10, v11, :cond_8

    iget v11, v9, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v12, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v11, v12, :cond_8

    iget-boolean v9, v9, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v9, v11, :cond_8

    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eq v9, v11, :cond_9

    .line 878
    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 879
    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v11, v11, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 880
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v13, v13, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v10, 0xaa3

    .line 877
    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 881
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 883
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 881
    const-string v10, "debug.tracing.battery_status"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "debug.tracing.plug_type"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_9
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-eq v9, v10, :cond_a

    .line 891
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 892
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 893
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v10, 0xaa2

    .line 889
    invoke-static {v10, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 895
    :cond_a
    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v9, :cond_b

    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    if-nez v9, :cond_b

    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v9, :cond_b

    .line 899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v1, v8

    move v8, v4

    .line 903
    :cond_b
    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v9, :cond_c

    .line 905
    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v9, :cond_f

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v10, v4, :cond_f

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v9, v10, :cond_f

    .line 909
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3

    .line 913
    :cond_c
    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v9, :cond_d

    .line 914
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3

    .line 915
    :cond_d
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v9, v10, :cond_e

    .line 916
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_3

    :cond_e
    if-eqz p1, :cond_f

    .line 917
    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v9, v10, :cond_f

    .line 920
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 924
    :cond_f
    :goto_3
    iget v9, v0, Lcom/android/server/BatteryService;->mSequence:I

    add-int/2addr v9, v4

    iput v9, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 929
    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v10, 0x2

    const-string/jumbo v11, "seq"

    const/high16 v12, 0x4000000

    if-eqz v9, :cond_10

    iget v13, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-nez v13, :cond_10

    .line 930
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 932
    iget v13, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v9, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    iget-object v13, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v13

    .line 936
    iget-object v14, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 937
    iput-object v9, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 938
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 939
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 949
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->showPluggedInPopupWindowAutoDissmiss()V

    goto :goto_4

    :cond_10
    if-nez v9, :cond_11

    .line 951
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v9, :cond_11

    .line 952
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    invoke-virtual {v9, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 954
    iget v13, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v9, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 956
    iget-object v13, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 957
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v13

    .line 958
    iget-object v14, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 959
    iput-object v9, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 960
    iget-object v9, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 961
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 971
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->dissmissPluggedInPopupWindowIfShowing()V

    .line 977
    :cond_11
    :goto_4
    iget v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v9, :cond_14

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget-object v13, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v13, v13, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v10, v13, :cond_12

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v10, :cond_14

    :cond_12
    sget v10, Lcom/android/server/BatteryService;->LOWER_BATTERY_LEVEL_SHOW_TIP:I

    if-eq v13, v10, :cond_13

    const/16 v10, 0xa

    if-eq v13, v10, :cond_13

    if-ne v13, v5, :cond_14

    .line 982
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->showPluggedInPopupWindowAutoDissmiss()V

    goto :goto_5

    :cond_14
    if-eqz v9, :cond_15

    .line 984
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 v9, 0x64

    if-ne v5, v9, :cond_15

    .line 985
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->showPluggedInPopupWindowAutoDissmiss()V

    .line 988
    :cond_15
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v5

    const/4 v9, 0x3

    if-eqz v5, :cond_16

    .line 989
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 990
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 992
    iget v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 996
    iget-object v5, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 997
    iput-object v3, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 998
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 999
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    .line 1009
    :cond_16
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v4, v5, :cond_17

    .line 1011
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 1012
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1014
    iget v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v3, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1017
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 1018
    iget-object v5, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1019
    iput-object v3, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1020
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1021
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1037
    :cond_17
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->rateLimitBatteryChangedBroadcast(Z)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1040
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked(Z)V

    .line 1042
    :cond_18
    iget v4, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v4, v5, :cond_19

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v4, v5, :cond_1a

    .line 1044
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 1049
    :cond_1a
    iget-object v4, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v8, :cond_1b

    cmp-long v4, v1, v6

    if-eqz v4, :cond_1b

    .line 1053
    invoke-virtual {v0, v1, v2}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    :cond_1b
    if-nez v3, :cond_1c

    .line 1058
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    .line 1059
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    .line 1060
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    .line 1061
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    .line 1062
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    .line 1063
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    .line 1064
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    .line 1065
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    .line 1066
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    .line 1067
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargeCounter:I

    .line 1068
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    .line 1069
    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    .line 1070
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    .line 1071
    iget v2, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    .line 1072
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    :cond_1c
    return-void
.end method

.method public final processValuesLocked(ZLjava/io/PrintWriter;)V
    .locals 0

    .line 1712
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1714
    iget p0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    return-void
.end method

.method public final rateLimitBatteryChangedBroadcast(Z)Z
    .locals 10

    .line 1344
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    .line 1346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    .line 1347
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    return v1

    .line 1351
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v1

    .line 1353
    :goto_0
    iget v6, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    iget v7, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    if-eq v6, v7, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v1

    .line 1355
    :goto_1
    iget v7, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    iget v8, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    if-eq v7, v8, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-nez p1, :cond_c

    .line 1357
    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne p1, v8, :cond_c

    iget-boolean p1, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ne p1, v8, :cond_c

    iget p1, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-ne p1, v8, :cond_c

    iget p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-ne p1, v8, :cond_c

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    if-eq p1, v2, :cond_4

    goto :goto_3

    :cond_4
    sub-int p1, v0, v3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-eqz v5, :cond_6

    .line 1388
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    .line 1389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x4e20

    cmp-long p1, v2, v8

    if-ltz p1, :cond_6

    .line 1391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    if-eqz v7, :cond_5

    .line 1394
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_5
    return v1

    :cond_6
    if-eqz v6, :cond_9

    .line 1400
    iget p1, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    sub-int/2addr p1, v0

    .line 1401
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    if-eqz v5, :cond_7

    .line 1406
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_7
    if-eqz v7, :cond_8

    .line 1409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_8
    return v1

    :cond_9
    if-eqz v7, :cond_b

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1388

    cmp-long p1, v2, v6

    if-ltz p1, :cond_b

    .line 1417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    if-eqz v5, :cond_a

    .line 1420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_a
    return v1

    :cond_b
    return v4

    :cond_c
    :goto_3
    if-eqz v5, :cond_d

    .line 1373
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_d
    if-eqz v7, :cond_e

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_e
    return v1
.end method

.method public final registerHealthCallback()V
    .locals 8

    .line 540
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 543
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 554
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 559
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string v3, "health: Waited "

    if-nez v2, :cond_0

    .line 560
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    .line 565
    :cond_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms and received the update."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catch_0
    move-exception p0

    .line 548
    :try_start_1
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    throw p0

    :catch_1
    move-exception p0

    .line 545
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (RemoteException)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 551
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 552
    throw p0
.end method

.method public final resetBattery(ZLjava/io/PrintWriter;)V
    .locals 3

    .line 1691
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1692
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1693
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1694
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1696
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz p1, :cond_1

    .line 1697
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 1698
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    :cond_1
    return-void
.end method

.method public final sendBatteryChangedIntentLocked(Z)V
    .locals 4

    .line 1079
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x60000000

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1083
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 1085
    const-string/jumbo v2, "seq"

    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1087
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1089
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1090
    const-string v2, "battery_low"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string/jumbo v1, "plugged"

    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1094
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v2, "voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1095
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v2, "technology"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v1, "invalid_charger"

    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1099
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v2, "max_charging_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1101
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v2, "max_charging_voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v2, "charge_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v2, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v2, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1107
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string v2, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1109
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending ACTION_BATTERY_CHANGED. scale:100, info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1110
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1116
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1117
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1118
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1119
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendBatteryLevelChangedIntentLocked()V
    .locals 9

    .line 1194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1196
    const-string/jumbo v3, "seq"

    iget v4, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1200
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1201
    const-string v3, "battery_low"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1202
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1203
    const-string/jumbo v3, "plugged"

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1204
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1205
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1206
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1207
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1208
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v5, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v5, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1210
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string v5, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1212
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 1213
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_2

    .line 1221
    iget-wide v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    add-long/2addr v3, v7

    sub-long v0, v3, v1

    .line 1223
    :goto_0
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final sendEnqueuedBatteryLevelChangedEvents()V
    .locals 4

    .line 1229
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1230
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1231
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1232
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1234
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1235
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1237
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    return-void

    :catchall_0
    move-exception p0

    .line 1232
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shouldSendBatteryLowLocked()Z
    .locals 5

    .line 614
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 615
    :goto_0
    iget v3, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_3

    .line 623
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_3

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v4, :cond_3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-gt v3, v4, :cond_2

    iget p0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v0, p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final shouldShutdownLocked()Z
    .locals 7

    .line 631
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldShutdownLocked mHealthInfo.batteryLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",LOW_BATTERY_LEVELS_SHUTDOWN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/BatteryService;->LOW_BATTERY_LEVELS_SHUTDOWN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mBootCompleted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mLastBatteryLevel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    iget v5, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-ne v5, v3, :cond_0

    return v3

    :cond_0
    return v4

    .line 637
    :cond_1
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    if-nez v5, :cond_2

    return v4

    :cond_2
    if-lt v1, v2, :cond_3

    return v4

    .line 645
    :cond_3
    iget-boolean v5, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez v5, :cond_4

    return v4

    .line 649
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v5, :cond_5

    if-ge v1, v2, :cond_5

    iget p0, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ltz p0, :cond_5

    if-ge v1, v2, :cond_5

    if-le p0, v1, :cond_5

    return v3

    :cond_5
    if-eqz v5, :cond_6

    if-ge v1, v2, :cond_6

    .line 659
    iget p0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    return v3

    :cond_6
    return v4
.end method

.method public final showPluggedInPopupWindowAutoDissmiss()V
    .locals 2

    .line 1719
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz p0, :cond_0

    const-string p0, "com.vivoods.shutdown"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1720
    const-class p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    .line 1721
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    if-eqz p0, :cond_0

    .line 1723
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "eNotePopWindowManager.showPluggedInPopupWindowAutoDissmiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;->showPluggedInPopupWindowAutoDissmiss()V

    :cond_0
    return-void
.end method

.method public final shutdownIfNoPowerLocked()V
    .locals 3

    .line 665
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 670
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final shutdownIfOverTempLocked()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_0

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 682
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    const-string v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "thermal,battery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 685
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 686
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final startShutdownActivity(Landroid/content/Intent;)V
    .locals 8

    .line 691
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 702
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 701
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 704
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 705
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 706
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2

    goto :goto_2

    .line 710
    :cond_2
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "android.permission.SHUTDOWN"

    invoke-virtual {v5, v6, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shutdown activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 717
    :cond_3
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 721
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final unplugBattery(ZLjava/io/PrintWriter;)V
    .locals 2

    .line 1679
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 1683
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 1684
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1685
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    const/4 v0, 0x1

    .line 1686
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1687
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public update(Landroid/hardware/health/HealthInfo;)V
    .locals 4

    .line 731
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 733
    const-string v0, "BatteryChargeCounter"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 735
    const-string v0, "BatteryCurrent"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 736
    const-string v0, "PlugType"

    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 737
    const-string v0, "BatteryStatus"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 739
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_0

    .line 741
    iput-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 p1, 0x0

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 744
    iget-object p0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 748
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    .line 748
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateBatteryWarningLevelLocked()V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 574
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 575
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v0, :cond_0

    .line 578
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 580
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_1

    .line 581
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 583
    :cond_1
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v0, 0x1

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final updateENotePopWindowBatteryState(IIZ)V
    .locals 2

    .line 1743
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    const-string v0, "com.vivoods.shutdown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->wakeUpForUpdateBatteryStateWakeUpIfShowing()V

    .line 1745
    const-class p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    .line 1746
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    if-eqz p0, :cond_0

    .line 1748
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "eNotePopWindowManager.updateENotePopWindowBatteryState"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;->updateBatteryState(IIZ)V

    :cond_0
    return-void
.end method

.method public final updateHealthInfo()V
    .locals 2

    .line 1654
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1656
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to update health service data."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final wakeUpForUpdateBatteryStateWakeUpIfShowing()V
    .locals 1

    .line 1755
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v0, p0, :cond_0

    .line 1757
    const-string p0, "com.vivoods.updateBatteryState"

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
