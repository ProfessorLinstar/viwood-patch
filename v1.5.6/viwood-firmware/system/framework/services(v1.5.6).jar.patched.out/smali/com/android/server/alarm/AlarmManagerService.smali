.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# static fields
.field public static DEBUG_ALARM_CLOCK:Z = false

.field public static DEBUG_BATCH:Z = false

.field public static final DEBUG_BG_LIMIT:Z = false

.field public static final DEBUG_LISTENER_CALLBACK:Z = false

.field public static DEBUG_STANDBY:Z = false

.field public static DEBUG_WAKELOCK:Z = false

.field public static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field public static localLOGV:Z = false


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field public final mAlarmClockUpdater:Ljava/lang/Runnable;

.field public final mAlarmDispatchComparator:Ljava/util/Comparator;

.field public mAlarmStore:Lcom/android/server/alarm/AlarmStore;

.field public mAlarmsPerUid:Landroid/util/SparseIntArray;

.field public mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mAllowWhileIdleDispatches:Ljava/util/ArrayList;

.field public mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mBackgroundIntent:Landroid/content/Intent;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field public mBroadcastRefCount:I

.field public final mBroadcastStats:Landroid/util/SparseArray;

.field public mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field public mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field public mDateChangeSender:Landroid/app/PendingIntent;

.field public final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field public mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field public final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mInFlight:Ljava/util/ArrayList;

.field public final mInFlightListeners:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field public mInteractive:Z

.field public mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field public final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field public mLastTickReceived:J

.field public mLastTickSet:J

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mLastTrigger:J

.field public mLastWakeup:J

.field public mListenerCount:I

.field public mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mListenerFinishCount:I

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/internal/util/LocalLog;

.field public mMaxDelayTime:J

.field public mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field public final mNextAlarmClockForUser:Landroid/util/SparseArray;

.field public mNextAlarmClockMayChange:Z

.field public mNextNonWakeUpSetAt:J

.field public mNextNonWakeup:J

.field public mNextNonWakeupDeliveryTime:J

.field public mNextTickHistory:I

.field public mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field public mNextWakeUpSetAt:J

.field public mNextWakeup:J

.field public mNonInteractiveStartTime:J

.field public mNonInteractiveTime:J

.field public mNumDelayedAlarms:I

.field public mNumTimeChanged:I

.field public mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field public mOptsWithFgs:Landroid/app/BroadcastOptions;

.field public mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field public mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mPendingBackgroundAlarms:Landroid/util/SparseArray;

.field public mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field public mPendingNonWakeupAlarms:Ljava/util/ArrayList;

.field public final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field public final mRemovalHistory:Landroid/util/SparseArray;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mSendCount:I

.field public mSendFinishCount:I

.field public final mService:Landroid/os/IBinder;

.field public mStartCurrentDelayTime:J

.field public mStartUserBeforeScheduledAlarms:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSystemUiUid:I

.field public mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field public final mTickHistory:[J

.field public mTimeTickIntent:Landroid/content/Intent;

.field public mTimeTickOptions:Landroid/os/Bundle;

.field public mTimeTickTrigger:Landroid/app/IAlarmListener;

.field public final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mTotalDelayTime:J

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$3cblH7eOf-8k0i2H4hIA4DAIYbY(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4pmnbsfPmlq7li_sX-YF8MBRnSs(Lcom/android/server/alarm/AlarmManagerService;ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ct09kLSBsw8yFCFj8quDlIWNG7k(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Cz2x8Gr-RoiqfJpDuNZEfBsi-Zk(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FGaKilfo5wHxIMcbDNdy1Ruhrpg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HZ9MHeHvzmwdrKhw5oBZt-U8er0(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$interactiveStateChangedLocked$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$L82siL18ro7TYb8gZPPKO1HL33E(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MERpfNaCHJyDKltYJNz7MGK6mHg(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MXDdNWw9OpgP0hi7S7zvZJwZQ4I(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OC5GqY2hlZMiBRf8m9Db4bIdL_Q(ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4119
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$PWZJeVAGbJJbJ2jrjucyiyPbD7Y(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q_bRrXlgc9swPPcdNRa7rIVQfiE(Lcom/android/server/alarm/AlarmManagerService;[I[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onStart$6([I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QgyF8PZON2kLE4tEaY61PTMen4Q(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VK0Sa8MOUCAMEGsVxaDJoO0qkwg(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4076
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WZFEMPWy81l-szSzhRJHOwNjF-M([ILcom/android/server/alarm/Alarm;)Z
    .locals 4

    .line 1939
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_1

    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1943
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alarm "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " being removed for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 1944
    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because the app got frozen"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1943
    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XLrIbS2bf-akyTTaCua-_4vntFc(ILcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4085
    iget p1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XXqljoa0_KcQujUWwiqvIoQmRac(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4097
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_BCHKjocSVhDv0gfpbWpLMrPJHs(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onUserStarting$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bN-p56GdkwdB3Yk6RnyjKfw-OZA(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fFF1Wf09nFoV5Ia8NUvmuac59jI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fb3eUBahHCOZ5LgT4KvmXrDP9iU(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmStore;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gTBrLqI8lRe-eLGhoAoKns8vULU(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lO7FlqYCXbhzV969DpFL5GaI-Ko(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xOVJiukLnAqCBEmoGpBLpPibzW8(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .locals 2

    .line 3987
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_0

    iget-object p0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide p0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryStatsInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/BatteryStatsInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartUserBeforeScheduledAlarms(Lcom/android/server/alarm/AlarmManagerService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTickSet(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScheduleExactAlarmDeniedByDefault(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService;->logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAlarmsInternalLocked(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/function/Predicate;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveExactListenerAlarms(Lcom/android/server/alarm/AlarmManagerService;[I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smclose(J)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetNextAlarm(JI)J
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smincrement(Landroid/util/SparseIntArray;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sminit()J
    .locals 2

    .line 0
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1346
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .locals 3

    .line 1341
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x4

    .line 236
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 243
    new-instance p1, Lcom/android/internal/util/LocalLog;

    const-string v0, "AlarmManager"

    invoke-direct {p1, v0}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 254
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 258
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 265
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 270
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    const/16 p1, 0xa

    .line 283
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 291
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 304
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "REORDER_ALARMS_FOR_STANDBY"

    const-string v2, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Alarm manager stats"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 349
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 350
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 351
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 352
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 353
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 354
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 366
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 368
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 372
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 376
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1242
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 1317
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1318
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1787
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1790
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide/16 v0, 0x0

    .line 1791
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1792
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 2748
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 5171
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 5259
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 5261
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 5263
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 5265
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1342
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-void
.end method

.method public static addClampPositive(JJ)J
    .locals 5

    .line 0
    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    cmp-long p0, p0, v2

    if-ltz p0, :cond_1

    cmp-long p0, p2, v2

    if-ltz p0, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    return-wide v2
.end method

.method private static native close(J)V
.end method

.method public static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .locals 4

    .line 4209
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 4211
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4212
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4213
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4214
    const-string v3, " #"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-int v3, v0, v1

    .line 4215
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4216
    const-string v3, ": "

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4217
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4218
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4219
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 4220
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1531
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1532
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1534
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 1535
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1537
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 1541
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1545
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1546
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 0

    .line 3930
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EHm"

    goto :goto_0

    :cond_0
    const-string p0, "Ehma"

    .line 3931
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_1

    .line 3932
    const-string p0, ""

    return-object p0

    .line 3933
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .locals 1

    .line 4758
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4759
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {p0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result p0

    return p0

    .line 4762
    :cond_0
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return p0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method public static increment(Landroid/util/SparseIntArray;I)V
    .locals 2

    .line 4706
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 4708
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return-void

    .line 4710
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static native init()J
.end method

.method public static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 2466
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x24

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .locals 2

    const-wide/32 v0, 0xa35edc1

    .line 3046
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 3045
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 4412
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0xc

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

.method public static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 2

    .line 4225
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4228
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 4229
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4232
    :cond_2
    iget p0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isRtc(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .locals 2

    .line 326
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const-string v0, "TIME_TICK"

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUseExactAlarmEnabled(Ljava/lang/String;I)Z
    .locals 2

    const-wide/32 v0, 0xd068d35

    .line 3051
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 3050
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method public static makeBasicAlarmBroadcastOptions()Landroid/app/BroadcastOptions;
    .locals 2

    .line 357
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 358
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    return-object v0
.end method

.method public static maxTriggerTime(JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    sub-long p4, p2, p0

    :cond_0
    const-wide/16 p0, 0x2710

    cmp-long p0, p4, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, p4

    :goto_0
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double p4, v0

    mul-double/2addr p4, p0

    double-to-long p0, p4

    .line 1385
    invoke-static {p2, p3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p0

    if-nez v2, :cond_2

    const-wide/32 p4, 0x36ee80

    .line 1391
    invoke-static {p2, p3, p4, p5}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_2
    return-wide p0
.end method

.method public static native set(JIJJ)I
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method public final adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 9

    .line 2409
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2410
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2414
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_8

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 2420
    :cond_1
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    goto :goto_1

    .line 2423
    :cond_2
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2425
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2429
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    .line 2430
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2431
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2432
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_0

    .line 2434
    :cond_3
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2435
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2436
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2438
    :goto_0
    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v5, :cond_4

    goto :goto_1

    .line 2444
    :cond_4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_1

    .line 2447
    :cond_5
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 2448
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_6

    goto :goto_1

    .line 2451
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    goto :goto_1

    :cond_7
    const-wide v4, 0x757b12c00L

    add-long/2addr v0, v4

    .line 2456
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2416
    :cond_8
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    .line 2531
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2532
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 2536
    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2537
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2538
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2541
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_1

    if-lez v6, :cond_4

    .line 2548
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v5, v2, v4, v6}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v4

    sub-long v6, v0, v4

    .line 2550
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long p0, v6, v8

    if-gez p0, :cond_4

    add-long/2addr v4, v8

    .line 2551
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2556
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v5

    if-lt v6, v5, :cond_4

    .line 2559
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6, v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->hasQuota(Ljava/lang/String;IJ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2562
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2563
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_2
    if-gtz v5, :cond_3

    const-wide v4, 0x757b12c00L

    :goto_0
    add-long/2addr v0, v4

    goto :goto_1

    .line 2571
    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    .line 2573
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_0

    .line 2575
    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    .line 2579
    iput-boolean p0, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2580
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2533
    :cond_5
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .locals 9

    .line 2476
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 2477
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    if-ne v2, p1, :cond_0

    goto/16 :goto_3

    .line 2482
    :cond_0
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_1

    goto :goto_2

    .line 2485
    :cond_1
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2487
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2491
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 2492
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2493
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2494
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_0

    .line 2496
    :cond_2
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2497
    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2498
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2500
    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v5, :cond_3

    goto :goto_2

    .line 2506
    :cond_3
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 2508
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 2510
    :cond_4
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 2511
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-nez v2, :cond_5

    goto :goto_1

    .line 2514
    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v7

    .line 2515
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    .line 2518
    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2520
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    .line 2478
    :cond_7
    :goto_3
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    .line 2372
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2375
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    .line 2376
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v2, :cond_1

    goto :goto_0

    .line 2380
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    .line 2383
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    :goto_0
    return v0

    .line 2387
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    sub-long v6, v2, v4

    .line 2390
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    .line 2392
    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_1

    .line 2394
    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    .line 2395
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 2396
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2397
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 6

    .line 1282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1286
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    .line 1288
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1289
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_0

    .line 1290
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1291
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v3

    .line 1290
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, p0, :cond_4

    .line 1296
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1298
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    const-string v4, "android"

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1299
    iput v1, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    .line 1300
    :cond_2
    iget v4, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1301
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 1300
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1302
    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    :cond_3
    const/4 v4, 0x2

    .line 1304
    iput v4, v3, Lcom/android/server/alarm/Alarm;->priorityClass:I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public checkAllowNonWakeupDelayLocked(J)Z
    .locals 6

    .line 4362
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4365
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eqz v0, :cond_1

    return v1

    .line 4368
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    .line 4371
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    return v1

    .line 4377
    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public final convertToElapsed(JI)J
    .locals 4

    .line 1354
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1355
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method public currentNonWakeupFuzzLocked(J)J
    .locals 2

    .line 4347
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-wide/32 p0, 0x1d4c0

    return-wide p0

    :cond_0
    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-gez p0, :cond_1

    const-wide/32 p0, 0xdbba0

    return-wide p0

    :cond_1
    const-wide/32 p0, 0x36ee80

    return-wide p0
.end method

.method public final decrementAlarmCount(II)V
    .locals 3

    .line 5639
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 5641
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-le v1, p2, :cond_0

    .line 5643
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v2, v1, p2

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    .line 5645
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 5649
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to decrement existing alarm count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 10

    .line 4383
    const-string v0, "AlarmManager"

    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const/4 v1, 0x0

    .line 4384
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4385
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4386
    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v4, 0x20000

    if-eqz v3, :cond_0

    .line 4387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch wakeup alarm to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    .line 4390
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch non-wakeup alarm to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4394
    :goto_1
    :try_start_0
    sget-boolean v3, Lcom/android/server/alarm/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    .line 4395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sending alarm "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    .line 4398
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v2, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v9, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4401
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 4403
    :goto_3
    const-string v6, "Failure sending alarm."

    invoke-static {v0, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4405
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 4406
    iget v2, v2, Lcom/android/server/alarm/Alarm;->uid:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .locals 25

    move-object/from16 v0, p1

    .line 1553
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_2

    .line 1556
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/alarm/Alarm;

    .line 1557
    iget-boolean v2, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move/from16 v20, v3

    goto :goto_1

    :cond_0
    move/from16 v20, v1

    .line 1560
    :goto_1
    iput v3, v9, Lcom/android/server/alarm/Alarm;->count:I

    .line 1563
    iget-wide v1, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    int-to-long v1, v3

    .line 1564
    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    sub-long v3, p2, v3

    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v9, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v1, v1

    mul-long v10, v1, v5

    .line 1567
    invoke-virtual {v9}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v1

    add-long v3, v1, v10

    .line 1568
    iget-wide v5, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v5

    .line 1570
    iget v1, v9, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v12, v9, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v12, v10

    sub-long/2addr v5, v3

    iget-wide v10, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide v14, v10

    iget-object v10, v9, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move v11, v7

    move-wide v6, v5

    move-wide v4, v3

    move-wide v2, v12

    iget v13, v9, Lcom/android/server/alarm/Alarm;->flags:I

    move-wide v15, v14

    iget-object v14, v9, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move-wide/from16 v16, v15

    iget-object v15, v9, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v12, v9, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v9, v9, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v21, v11

    const/4 v11, 0x0

    move-object/from16 v22, v9

    move-wide/from16 v23, v16

    move/from16 v17, v8

    move/from16 v16, v12

    move-wide/from16 v8, v23

    const/4 v12, 0x0

    move-object/from16 v0, v22

    move/from16 v22, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    move/from16 v21, v7

    move/from16 v22, v8

    :goto_2
    add-int/lit8 v8, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v7, v21

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    if-nez v1, :cond_5

    move-wide/from16 v1, p2

    .line 1577
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1579
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1580
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1582
    invoke-virtual {v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1584
    :cond_3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1585
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    return-void

    :cond_4
    :goto_3
    move-object/from16 v3, p1

    goto :goto_4

    :cond_5
    move-wide/from16 v1, p2

    goto :goto_3

    .line 1587
    :goto_4
    sget-boolean v4, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v4, :cond_6

    .line 1588
    const-string v4, "AlarmManager"

    const-string v5, "Waking up to deliver pending blocked alarms"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_6
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1592
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1593
    iget-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v1, v4

    .line 1594
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1595
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_7

    .line 1596
    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1598
    :cond_7
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1600
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1601
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1602
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 21
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3065
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3066
    :try_start_0
    const-string v3, "Current Alarm Manager state:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3069
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v3, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3070
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3072
    const-string v3, "Feature Flags:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3074
    const-string v3, "com.android.server.alarm.start_user_before_scheduled_alarms"

    .line 3075
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 3074
    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 3076
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3077
    const-string v3, "com.android.server.alarm.acquire_wakelock_before_send"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 3078
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3079
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3080
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Standby Parole: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3083
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3085
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v3, :cond_0

    .line 3086
    invoke-virtual {v3, v1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3087
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1a

    .line 3090
    :cond_0
    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v3

    .line 3091
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3092
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v7

    .line 3093
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3095
    const-string/jumbo v10, "nowRTC="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v1, v7, v8}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3097
    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3099
    const-string v10, " nowELAPSED="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3101
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3103
    const-string/jumbo v10, "mLastTimeChangeClockTime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3104
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3105
    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3106
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const-string/jumbo v10, "mLastTimeChangeRealtime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3109
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3111
    const-string/jumbo v10, "mLastTickReceived="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3112
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    const-string/jumbo v10, "mLastTickSet="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3115
    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3119
    const-string v10, "Recent TIME_TICK history:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3120
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3121
    iget v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    :cond_1
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_2

    const/16 v10, 0x9

    .line 3125
    :cond_2
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v11, v11, v10

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_3

    .line 3127
    new-instance v15, Ljava/util/Date;

    sub-long v11, v3, v11

    sub-long v11, v7, v11

    invoke-direct {v15, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 3128
    :cond_3
    const-string v11, "-"

    .line 3126
    :goto_1
    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3129
    iget v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v10, v11, :cond_1

    .line 3130
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3133
    const-class v10, Lcom/android/server/SystemServiceManager;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SystemServiceManager;

    if-eqz v10, :cond_5

    .line 3135
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3136
    const-string v11, "RuntimeStarted="

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3137
    new-instance v11, Ljava/util/Date;

    sub-long v15, v7, v3

    .line 3138
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v17

    move-wide/from16 v19, v13

    add-long v13, v15, v17

    invoke-direct {v11, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 3137
    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3140
    const-string v11, "  (Runtime restarted)"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3142
    :cond_4
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3144
    const-string v11, "Runtime uptime (elapsed): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3145
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3146
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3148
    const-string v11, "Runtime uptime (uptime): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3150
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_5
    move-wide/from16 v19, v13

    .line 3153
    :goto_2
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3154
    iget-boolean v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_6

    .line 3155
    const-string v5, "Time since non-interactive: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3156
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v5, v3, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3157
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3159
    :cond_6
    const-string v5, "Max wakeup delay: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3160
    invoke-virtual {v0, v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3161
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3163
    const-string v5, "Time since last dispatch: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3164
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v5, v3, v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3165
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3167
    const-string v5, "Next non-wakeup delivery time: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3168
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3169
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3171
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v10, v7, v3

    add-long/2addr v5, v10

    .line 3172
    iget-wide v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    add-long/2addr v12, v10

    .line 3173
    const-string v10, "Next non-wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3174
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3175
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3176
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3177
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3178
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3181
    const-string/jumbo v10, "set at "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3182
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3183
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3184
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3186
    const-string v10, "Next wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3187
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3188
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3189
    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3190
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3191
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3194
    const-string/jumbo v5, "set at "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3195
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3196
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3197
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3199
    const-string v5, "Next kernel non-wakeup alarm: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3200
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3201
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3202
    const-string v5, "Next kernel wakeup alarm: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3203
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3204
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3206
    const-string v5, "Last wakeup: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3208
    const-string v5, " = "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3209
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3211
    const-string v5, "Last trigger: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v5, v6, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3213
    const-string v5, " = "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3214
    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v1, v5, v6}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3216
    const-string v5, "Num time change events: "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3219
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3222
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3223
    const-string v5, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    .line 3224
    :goto_3
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_8

    if-lez v6, :cond_7

    .line 3226
    const-string v10, ", "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    :cond_7
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3229
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3231
    :cond_8
    const-string v6, "]"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3233
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3234
    const-string v6, "Next alarm clock information: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3235
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3236
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    move v10, v5

    .line 3237
    :goto_4
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 3238
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    move v10, v5

    .line 3240
    :goto_5
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 3241
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 3243
    :cond_a
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3244
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v11, :cond_b

    .line 3245
    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    goto :goto_7

    :cond_b
    move-wide/from16 v11, v19

    .line 3246
    :goto_7
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    .line 3247
    const-string/jumbo v14, "user:"

    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3248
    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3249
    const-string v10, " pendingSend:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3251
    const-string v10, " time:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v1, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    cmp-long v10, v11, v19

    if-lez v10, :cond_c

    .line 3254
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3255
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3256
    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3257
    invoke-static {v11, v12, v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3259
    :cond_c
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_6

    .line 3261
    :cond_d
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3263
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 3264
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3265
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3267
    :cond_e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3269
    const-string v6, "Pending user blocked background alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    move v7, v6

    .line 3272
    :goto_8
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ge v6, v8, :cond_10

    .line 3273
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_f

    .line 3274
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_f

    .line 3276
    invoke-static {v1, v8, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    move v7, v10

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_10
    if-nez v7, :cond_11

    .line 3280
    const-string/jumbo v6, "none"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    :cond_11
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3283
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3285
    const-string v6, "Pending alarms per uid: ["

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v6, v5

    .line 3286
    :goto_9
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_13

    if-lez v6, :cond_12

    .line 3288
    const-string v7, ", "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3290
    :cond_12
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3291
    const-string v7, ":"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3292
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3294
    :cond_13
    const-string v6, "]"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3297
    iget-boolean v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v6, :cond_14

    .line 3298
    const-string v6, "Scheduled user wakeups:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3299
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/UserWakeupStore;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3300
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3303
    :cond_14
    const-string v6, "App Alarm history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3306
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3307
    const-string v6, "Temporary Quota Reserves:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3310
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_16

    .line 3311
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3312
    const-string v6, "Idle mode state:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3315
    const-string v6, "Idling until: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3316
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_15

    .line 3317
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3318
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_a

    .line 3320
    :cond_15
    const-string/jumbo v6, "null"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    :goto_a
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3324
    :cond_16
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_17

    .line 3325
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3326
    const-string v6, "Next wake from idle: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3327
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3329
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3330
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v6, v1, v3, v4, v9}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3331
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3334
    :cond_17
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3335
    const-string v6, "Past-due non-wakeup alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3336
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_18

    .line 3337
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3339
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3340
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v1, v6, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3341
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_b

    .line 3343
    :cond_18
    const-string v6, "(none)"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    :goto_b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3346
    const-string v6, "Number of delayed alarms: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3347
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3348
    const-string v6, ", total delay time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3349
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3350
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3352
    const-string v6, "Max delay time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3353
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3354
    const-string v6, ", max non-interactive time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3355
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3356
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3357
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3359
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3360
    const-string v6, "Broadcast ref count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3361
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3362
    const-string v6, "PendingIntent send count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3363
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3364
    const-string v6, "PendingIntent finish count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3365
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3366
    const-string v6, "Listener send count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3367
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3368
    const-string v6, "Listener finish count: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3369
    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3370
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3372
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1a

    .line 3373
    const-string v6, "Outstanding deliveries:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3375
    :goto_c
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_19

    .line 3376
    const-string v7, "#"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3377
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3378
    const-string v7, ": "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3379
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 3381
    :cond_19
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3382
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3385
    :cond_1a
    const-string v6, "Allow while idle history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3387
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3389
    const-string v6, "Allow while idle compat history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3390
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3391
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3393
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-lez v6, :cond_1c

    .line 3394
    const-string v6, "Last priority alarm dispatches:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3396
    :goto_d
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1b

    .line 3397
    const-string v7, "UID: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3398
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3399
    const-string v7, ": "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3400
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    invoke-static {v7, v8, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3401
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 3403
    :cond_1b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3406
    :cond_1c
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_1f

    .line 3407
    const-string v6, "Removal history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v5

    .line 3409
    :goto_e
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1e

    .line 3410
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3411
    const-string v7, ":"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3413
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 3414
    array-length v8, v7

    sub-int/2addr v8, v10

    :goto_f
    if-ltz v8, :cond_1d

    .line 3415
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v7

    sub-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3416
    aget-object v11, v7, v8

    invoke-virtual {v11, v1, v3, v4, v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 3418
    :cond_1d
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 3420
    :cond_1e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3421
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3424
    :cond_1f
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v7, "Recent problems:"

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 3425
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_20
    const/16 v6, 0xa

    .line 3428
    new-array v7, v6, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3429
    new-instance v8, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v8, v0}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v9, v5

    move v11, v9

    .line 3442
    :goto_10
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v9, v12, :cond_28

    .line 3443
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    move v13, v5

    .line 3444
    :goto_11
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_27

    .line 3445
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v15, v5

    move/from16 v16, v10

    .line 3446
    :goto_12
    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v15, v10, :cond_26

    .line 3447
    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v11, :cond_21

    .line 3449
    invoke-static {v7, v5, v11, v10, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v17

    move/from16 v5, v17

    :cond_21
    if-gez v5, :cond_22

    neg-int v5, v5

    add-int/lit8 v5, v5, -0x1

    :cond_22
    if-ge v5, v6, :cond_24

    rsub-int/lit8 v6, v5, 0x9

    if-lez v6, :cond_23

    move/from16 v19, v9

    add-int/lit8 v9, v5, 0x1

    .line 3456
    invoke-static {v7, v5, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_23
    move/from16 v19, v9

    .line 3458
    :goto_13
    aput-object v10, v7, v5

    const/16 v5, 0xa

    if-ge v11, v5, :cond_25

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_24
    move v5, v6

    move/from16 v19, v9

    :cond_25
    :goto_14
    add-int/lit8 v15, v15, 0x1

    move v6, v5

    move/from16 v9, v19

    const/4 v5, 0x0

    goto :goto_12

    :cond_26
    move v5, v6

    move/from16 v19, v9

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v5, 0x0

    goto :goto_11

    :cond_27
    move v5, v6

    move/from16 v19, v9

    move/from16 v16, v10

    add-int/lit8 v9, v19, 0x1

    const/4 v5, 0x0

    goto :goto_10

    :cond_28
    if-lez v11, :cond_2b

    .line 3467
    const-string v5, "Top Alarms:"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v11, :cond_2a

    .line 3470
    aget-object v6, v7, v5

    .line 3471
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v9, :cond_29

    const-string v9, "*ACTIVE* "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3472
    :cond_29
    iget-wide v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3473
    const-string v9, " running, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3474
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3475
    const-string v9, " wakeups, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3476
    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3477
    const-string v9, " alarms: "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3478
    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3479
    const-string v9, ":"

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3480
    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3481
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3483
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3484
    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3485
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3486
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 3488
    :cond_2a
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3491
    :cond_2b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3492
    const-string v5, "Alarm Stats:"

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 3494
    :goto_16
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_31

    .line 3495
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    .line 3496
    :goto_17
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_30

    .line 3497
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3498
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v11, :cond_2c

    const-string v11, "*ACTIVE* "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3499
    :cond_2c
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3500
    const-string v11, ":"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3501
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3502
    const-string v11, " "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3503
    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3504
    const-string v11, " running, "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3505
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3506
    const-string v11, " wakeups:"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    .line 3509
    :goto_18
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2d

    .line 3510
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 3512
    :cond_2d
    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3513
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v10, 0x0

    .line 3514
    :goto_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2f

    .line 3515
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3516
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v12, :cond_2e

    const-string v12, "*ACTIVE* "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3517
    :cond_2e
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3518
    const-string v12, " "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3519
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3520
    const-string v12, " wakes "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3521
    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3522
    const-string v12, " alarms, last "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3523
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v12, v13, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3524
    const-string v12, ":"

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3527
    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3528
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3529
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 3531
    :cond_2f
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_17

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    .line 3534
    :cond_31
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3535
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3565
    monitor-exit v2

    return-void

    :goto_1a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpProto(Ljava/io/FileDescriptor;)V
    .locals 17

    move-object/from16 v0, p0

    .line 3569
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v2, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3571
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3572
    :try_start_0
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    .line 3573
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v5

    const-wide v8, 0x10300000001L

    .line 3574
    invoke-virtual {v2, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000002L

    .line 3575
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3576
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v8, 0x10300000003L

    invoke-virtual {v2, v8, v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3578
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    const-wide v10, 0x10300000004L

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3581
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3583
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v1, :cond_0

    const-wide v3, 0x10b00000006L

    .line 3584
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    .line 3587
    :cond_0
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3588
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v1, :cond_1

    .line 3590
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x10300000008L

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3593
    invoke-virtual {v0, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide v10, 0x10300000009L

    .line 3592
    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3594
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000aL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3596
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000bL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3600
    :cond_1
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v3, v5

    const-wide v10, 0x1030000000cL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3602
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v3, v5

    const-wide v10, 0x1030000000dL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3604
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000eL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3606
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v3, v5, v3

    const-wide v10, 0x1030000000fL

    invoke-virtual {v2, v10, v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3608
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    const-wide v3, 0x10300000010L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3610
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 3611
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v10, 0x0

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_2

    .line 3613
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3615
    :cond_2
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3616
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v4, v10

    :goto_2
    if-ge v4, v3, :cond_3

    .line 3618
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3620
    :cond_3
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v11, 0x10500000001L

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3621
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_4

    .line 3622
    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v13

    goto :goto_4

    :cond_4
    const-wide/16 v13, 0x0

    .line 3623
    :goto_4
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    const-wide v8, 0x20b00000012L

    .line 3624
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3626
    invoke-virtual {v2, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10800000002L

    .line 3627
    invoke-virtual {v2, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10300000003L

    .line 3628
    invoke-virtual {v2, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3629
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v8, v3

    goto :goto_3

    .line 3631
    :cond_5
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1, v2, v5, v6}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    move v8, v10

    .line 3633
    :goto_5
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_7

    .line 3634
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 3636
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v1, v10

    :goto_6
    if-ge v1, v13, :cond_6

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v14, v1, 0x1

    move-object v1, v3

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000014L

    .line 3637
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move v1, v14

    goto :goto_6

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 3643
    :cond_7
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_8

    const-wide v3, 0x10b00000015L

    .line 3644
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3647
    :cond_8
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_9

    const-wide v3, 0x10b00000017L

    .line 3648
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3652
    :cond_9
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v10

    :goto_7
    if-ge v1, v9, :cond_a

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v1, 0x1

    move-object v1, v3

    check-cast v1, Lcom/android/server/alarm/Alarm;

    const-wide v3, 0x20b00000018L

    .line 3653
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move v1, v13

    goto :goto_7

    .line 3657
    :cond_a
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide v3, 0x10500000019L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3658
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    const-wide v5, 0x1030000001aL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3659
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    const-wide v5, 0x1030000001bL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3660
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    const-wide v5, 0x1030000001cL

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3663
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const-wide v3, 0x1050000001dL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3664
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    const-wide v3, 0x1050000001eL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3665
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    const-wide v3, 0x1050000001fL

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3666
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    const-wide v3, 0x10500000020L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3667
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    const-wide v3, 0x10500000021L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3669
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v10

    :goto_8
    if-ge v4, v3, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    const-wide v8, 0x20b00000022L

    .line 3670
    invoke-virtual {v5, v2, v8, v9}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_8

    .line 3673
    :cond_b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const/16 v1, 0xa

    .line 3675
    new-array v3, v1, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3676
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move v5, v10

    move v6, v5

    .line 3689
    :goto_9
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_12

    .line 3690
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    move v9, v10

    .line 3691
    :goto_a
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v9, v13, :cond_11

    .line 3692
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v14, v10

    .line 3693
    :goto_b
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_10

    .line 3694
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v6, :cond_c

    .line 3696
    invoke-static {v3, v10, v6, v15, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v16

    move/from16 v10, v16

    :cond_c
    if-gez v10, :cond_d

    neg-int v10, v10

    add-int/lit8 v10, v10, -0x1

    :cond_d
    if-ge v10, v1, :cond_f

    rsub-int/lit8 v11, v10, 0x9

    if-lez v11, :cond_e

    add-int/lit8 v12, v10, 0x1

    .line 3703
    invoke-static {v3, v10, v3, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3705
    :cond_e
    aput-object v15, v3, v10

    if-ge v6, v1, :cond_f

    add-int/lit8 v6, v6, 0x1

    :cond_f
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_b

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_a

    :cond_11
    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    const-wide v11, 0x10500000001L

    goto :goto_9

    :cond_12
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v6, :cond_13

    const-wide v8, 0x20b00000026L

    .line 3714
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3715
    aget-object v5, v3, v1

    .line 3717
    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v2, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3718
    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v2, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x10b00000003L

    .line 3720
    invoke-virtual {v5, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3722
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3725
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3726
    :goto_d
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_17

    .line 3727
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x0

    .line 3728
    :goto_e
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_16

    const-wide v8, 0x20b00000027L

    .line 3729
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 3731
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    const-wide v11, 0x10b00000001L

    .line 3732
    invoke-virtual {v10, v2, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3735
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    .line 3736
    :goto_f
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_14

    .line 3737
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 3739
    :cond_14
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3740
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v10, :cond_15

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    const-wide v13, 0x20b00000002L

    .line 3741
    invoke-virtual {v12, v2, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_10

    .line 3744
    :cond_15
    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 3765
    :cond_17
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3767
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    .line 3765
    :goto_11
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpWithargs(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 2107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2110
    throw v0
.end method

.method public final getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .locals 1

    .line 4766
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    return-object v0

    .line 4769
    :cond_0
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4770
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 4772
    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumAllowedWindow(JJ)J
    .locals 0

    sub-long/2addr p3, p1

    long-to-double p1, p3

    const-wide/high16 p3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p1, p3

    double-to-long p1, p1

    .line 1369
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1

    .line 3783
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3784
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3785
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getNextWakeFromIdleTimeImpl()J
    .locals 3

    .line 3771
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3772
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    monitor-exit v0

    return-wide v1

    .line 3773
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getQuotaForBucketLocked(I)I
    .locals 1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 2360
    :goto_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1

    .line 5241
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 5243
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5244
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5246
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    if-nez p0, :cond_1

    .line 5248
    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 5249
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1

    .line 5235
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5236
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    .line 5237
    invoke-virtual {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method public hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .locals 7

    .line 2699
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 2704
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2706
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2708
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    :goto_0
    move v4, v3

    goto :goto_1

    .line 2714
    :cond_3
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    invoke-virtual {v2, v5, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_4

    goto :goto_0

    .line 2719
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public hasUseExactAlarmInternal(Ljava/lang/String;I)Z
    .locals 2

    .line 2693
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isUseExactAlarmEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.USE_EXACT_ALARM"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final incrementAlarmCount(I)V
    .locals 0

    .line 5610
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->increment(Landroid/util/SparseIntArray;I)V

    return-void
.end method

.method public interactiveStateChangedLocked(Z)V
    .locals 6

    .line 4141
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_4

    .line 4142
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 4143
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    .line 4145
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 4146
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 4147
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4148
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    .line 4149
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4151
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4152
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4153
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4155
    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    sub-long/2addr v0, v2

    .line 4157
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 4158
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 4162
    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4165
    :cond_3
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    :cond_4
    return-void
.end method

.method public final isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 3

    .line 4239
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4243
    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4247
    :cond_1
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4248
    iget p1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4249
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4252
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public isExemptFromExactAlarmPermissionNoLock(I)Z
    .locals 2

    .line 2736
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2737
    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2740
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_2

    .line 2742
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isExemptFromMinWindowRestrictions(I)Z
    .locals 0

    .line 2727
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result p0

    return p0
.end method

.method public final isIdlingImpl()Z
    .locals 1

    .line 3777
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3778
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3779
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPowerOffAlarmType(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z
    .locals 2

    const-wide/32 v0, 0xd7f327a

    .line 3056
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 3055
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$interactiveStateChangedLocked$21()V
    .locals 4

    .line 4162
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/alarm/Alarm;Lcom/android/server/alarm/Alarm;)I
    .locals 9

    .line 1245
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1246
    :goto_0
    iget v3, p2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_2

    return v4

    :cond_2
    return v2

    .line 1252
    :cond_3
    iget v0, p1, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iget v3, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    if-ge v0, v3, :cond_4

    return v4

    :cond_4
    if-le v0, v3, :cond_5

    return v2

    .line 1259
    :cond_5
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, p0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1260
    :goto_2
    iget-object v3, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-ne v3, p0, :cond_7

    move p0, v2

    goto :goto_3

    :cond_7
    move p0, v1

    :goto_3
    if-eq v0, p0, :cond_9

    if-eqz v0, :cond_8

    return v4

    :cond_8
    return v2

    .line 1266
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v7

    cmp-long p0, v5, v7

    if-gez p0, :cond_a

    return v4

    .line 1268
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    cmp-long p0, p0, v3

    if-lez p0, :cond_b

    return v2

    :cond_b
    return v1
.end method

.method public final synthetic lambda$onBootPhase$9()Lcom/android/server/alarm/AlarmStore;
    .locals 0

    .line 2100
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object p0
.end method

.method public final synthetic lambda$onStart$6([I[I)V
    .locals 6

    .line 1817
    array-length v0, p2

    .line 1818
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 1819
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Got different length arrays in frozen state callback! uids.length: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frozenStates.length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1824
    :cond_0
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1826
    aget v3, p2, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v3, 0xfce9184

    .line 1829
    aget v5, p1, v2

    invoke-static {v3, v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1833
    :cond_2
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Landroid/util/IntArray;->add(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    :cond_3
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 1836
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeExactListenerAlarms([I)V

    :cond_4
    return-void
.end method

.method public final synthetic lambda$onUserStarting$8(I)V
    .locals 5

    .line 1977
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1978
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 1979
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1982
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x6b

    .line 1983
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1982
    invoke-virtual {v3, v4, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 1984
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1985
    :try_start_0
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1986
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$2(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 1400
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1403
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$3(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$reevaluateRtcAlarms$4(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeAlarmsInternalLocked$14(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 4055
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$removeAlarmsInternalLocked$15(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4060
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$removeForStoppedLocked$19(ILcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 4107
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p2, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 4108
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$5(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .locals 2

    .line 1437
    iget v0, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1438
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1439
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1442
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$10(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 2604
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$11(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    .line 2616
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$setImplLocked$12(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 2620
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$triggerAlarmsLocked$22(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 4289
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method public final logAlarmBatchDelivered(IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 5

    .line 4719
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 4720
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4721
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 4722
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4723
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, p0, v3

    .line 4724
    invoke-virtual {p3, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    aput v4, v0, v3

    .line 4725
    aget v4, p0, v3

    invoke-virtual {p4, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4727
    :cond_0
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmBatchDelivered(II[I[I[I)V

    return-void
.end method

.method public lookForPackageLocked(Ljava/lang/String;I)Z
    .locals 7

    .line 4174
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 4175
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v5, v5, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v5, p2, :cond_0

    return v4

    .line 4179
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 4181
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 4182
    invoke-virtual {v5, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    .line 4187
    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_4
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 4188
    invoke-virtual {v3, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v3, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v3, p2, :cond_4

    return v4

    :cond_5
    return v2
.end method

.method public final notifyBroadcastAlarmCompleteLocked(I)V
    .locals 0

    .line 1693
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 1695
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final notifyBroadcastAlarmPendingLocked(I)V
    .locals 0

    .line 1686
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 1688
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onBootPhase(I)V
    .locals 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 1995
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1996
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 1998
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2000
    const-class v0, Lcom/android/server/DeviceIdleInternal;

    .line 2001
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2002
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2003
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2005
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 2006
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2007
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 2009
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 2010
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 2012
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2013
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2014
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2015
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    const/4 v0, 0x0

    .line 2017
    :try_start_1
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    const/16 v2, 0x6b

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2088
    :catch_0
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2090
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 2092
    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2093
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2094
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v1, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-interface {p1, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2096
    const-class p1, Landroid/os/BatteryStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2100
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2014
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 1796
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 1797
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 1799
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1800
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1801
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1802
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1803
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1804
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1806
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 1807
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1810
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110017

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_1

    .line 1813
    new-instance v0, Lcom/android/server/alarm/UserWakeupStore;

    invoke-direct {v0}, Lcom/android/server/alarm/UserWakeupStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    .line 1814
    invoke-virtual {v0}, Lcom/android/server/alarm/UserWakeupStore;->init()V

    .line 1816
    :cond_1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1840
    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/ActivityManager;->registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V

    .line 1842
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1856
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1857
    :try_start_0
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 1859
    new-instance v3, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v3}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1860
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1862
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v4, 0x36ee80

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1863
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1864
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1866
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/32 v4, 0x5265c00

    invoke-direct {v3, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>(J)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/16 v3, 0x0

    .line 1868
    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 1871
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->initializeTimeIfRequired()V

    .line 1873
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1875
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v3

    iput v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-gtz v3, :cond_2

    .line 1877
    const-string v3, "AlarmManager"

    const-string v4, "SysUI package not found!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1879
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1881
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1885
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    .line 1886
    invoke-virtual {v3, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v3, 0x2

    .line 1887
    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 1888
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    .line 1889
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1914
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x20200000

    .line 1915
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v5, 0x4000000

    invoke-static {v3, v1, v2, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1920
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 1921
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1922
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1923
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1925
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1926
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1927
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 1929
    :cond_3
    const-string v1, "AlarmManager"

    const-string v2, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1932
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1933
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .line 1931
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1971
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 1972
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 1973
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/UserWakeupStore;->onUserStarting(I)V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reevaluateRtcAlarms()V
    .locals 4

    .line 1398
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    .line 1407
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1413
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1420
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1423
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public refreshExactAlarmCandidates()V
    .locals 9

    .line 1952
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1954
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1955
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 1956
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-lez v5, :cond_0

    .line 1959
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1966
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    return-void
.end method

.method public final removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4001
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 4002
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v8

    .line 4004
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4005
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    .line 4007
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_0
    if-ltz v3, :cond_3

    .line 4008
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4009
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    :goto_1
    if-ltz v5, :cond_1

    .line 4010
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    .line 4011
    invoke-interface {v1, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4012
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4015
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 4016
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4019
    :cond_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_2
    if-ltz v3, :cond_5

    .line 4020
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 4021
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4022
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 4026
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    move v3, v13

    :goto_3
    if-ge v3, v12, :cond_a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 4027
    iget v3, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3, v11}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4028
    iget-object v3, v4, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v3, :cond_6

    .line 4029
    invoke-interface {v3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4031
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    move v3, v14

    goto :goto_3

    .line 4034
    :cond_7
    invoke-static {v4}, Lcom/android/server/alarm/AlarmManagerService;->isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4035
    const-string v3, "AlarmManager"

    const-string v5, "Removed TIME_TICK alarm"

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    :cond_8
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/RingBuffer;

    if-nez v3, :cond_9

    .line 4039
    new-instance v3, Lcom/android/internal/util/RingBuffer;

    const-class v5, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    const/16 v15, 0xa

    invoke-direct {v3, v5, v15}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 4040
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v15, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v5, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move-object v15, v3

    .line 4042
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v15, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    if-nez v10, :cond_e

    .line 4047
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_b

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    .line 4048
    iput-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    goto :goto_5

    :cond_b
    move v11, v13

    .line 4051
    :goto_5
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_c

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4052
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4053
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_c

    .line 4054
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    or-int/2addr v11, v1

    :cond_c
    if-eqz v11, :cond_d

    .line 4059
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4062
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4063
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    :cond_e
    return-void
.end method

.method public removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .locals 3

    .line 3980
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3981
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3984
    :cond_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lost permission to set exact alarms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3987
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(ILjava/lang/String;)V

    .line 3989
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x2

    .line 3990
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 3991
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 3994
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo p2, "schedule_exact_alarm revoked"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 3991
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs removeExactListenerAlarms([I)V
    .locals 2

    .line 1937
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1938
    :try_start_0
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>([I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 1948
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeForStoppedLocked(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    return-void

    .line 4107
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    const/4 p1, 0x0

    .line 4109
    invoke-virtual {p0, v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2

    .line 2169
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2170
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLocked(II)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    return-void

    .line 4085
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 4070
    sget-boolean p0, Lcom/android/server/alarm/AlarmManagerService;->localLOGV:Z

    if-eqz p0, :cond_0

    .line 4071
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "here"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p1, "AlarmManager"

    const-string/jumbo p2, "requested remove() of null operation"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    .line 4076
    :cond_1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeLocked(Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_1

    .line 4091
    sget-boolean p0, Lcom/android/server/alarm/AlarmManagerService;->localLOGV:Z

    if-eqz p0, :cond_0

    .line 4092
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "here"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string p1, "AlarmManager"

    const-string/jumbo p2, "requested remove() of null packageName"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    .line 4097
    :cond_1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    return-void
.end method

.method public removeUserLocked(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 4115
    const-string p0, "AlarmManager"

    const-string p1, "Ignoring attempt to remove system-user state!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4118
    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(I)V

    const/4 v1, 0x0

    .line 4120
    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4122
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 4123
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 4124
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4127
    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 4128
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 4129
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4132
    :cond_4
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 4133
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 4134
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 4

    .line 1434
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1436
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result p1

    .line 1445
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public rescheduleKernelAlarmsLocked()V
    .locals 9

    .line 3940
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v0

    .line 3942
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_2

    .line 3943
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v5

    .line 3944
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    if-eqz v2, :cond_0

    .line 3945
    invoke-virtual {v2}, Lcom/android/server/alarm/UserWakeupStore;->getNextWakeupTime()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-ltz v2, :cond_0

    cmp-long v2, v7, v5

    if-gez v2, :cond_0

    move-wide v5, v7

    .line 3950
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v7

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    .line 3952
    iput-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 3953
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    const/4 v2, 0x2

    .line 3954
    invoke-virtual {p0, v2, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_1
    cmp-long v2, v7, v5

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v7, v3

    .line 3960
    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    .line 3961
    iget-wide v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_4

    .line 3962
    :cond_3
    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_4
    cmp-long v2, v7, v3

    if-eqz v2, :cond_5

    .line 3966
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 3967
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    const/4 v0, 0x3

    .line 3968
    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_5
    return-void
.end method

.method public final restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 3

    .line 1450
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public schedulePoweroffAlarm(IJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .locals 3

    .line 1515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1520
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1521
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1522
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v1

    .line 1521
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_0
    return-void
.end method

.method public final sendNextAlarmClockChanged()V
    .locals 8

    .line 3899
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3900
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3902
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3903
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 3905
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 3906
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 3908
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3909
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3911
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    .line 3913
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3914
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3915
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 3917
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v2}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v4

    .line 3915
    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 3909
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 4

    .line 1478
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1483
    :cond_0
    const-string v1, "Sending blocked alarms for uid "

    const-string v2, "AlarmManager"

    if-eqz p2, :cond_5

    .line 1484
    sget-boolean v3, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v3, :cond_1

    .line 1485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 1489
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1490
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1491
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1494
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_4

    .line 1495
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 1498
    :cond_5
    sget-boolean p2, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz p2, :cond_6

    .line 1499
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_6
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1504
    :goto_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .locals 8

    .line 5619
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x34000000

    .line 5621
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5624
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5628
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    .line 5629
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5630
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    const/16 v6, 0xcf

    const-string v7, ""

    const/4 v5, 0x0

    .line 5629
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5633
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    .line 5634
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 5633
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v12, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p8

    move/from16 v14, p14

    move-object/from16 v11, p15

    if-nez v6, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    if-eqz p9, :cond_2

    .line 2180
    :cond_1
    const-string v0, "AlarmManager"

    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v15, 0x0

    if-eqz p9, :cond_3

    .line 2188
    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v7, v8, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object/from16 v8, p10

    goto :goto_0

    .line 2190
    :catch_0
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping unreachable alarm listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_0
    if-nez v6, :cond_4

    .line 2199
    const-string/jumbo v7, "null"

    goto :goto_1

    :cond_4
    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2200
    :goto_1
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setImpl() # type="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", callingUid="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", callingPackage="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", tag="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_5

    if-eqz v11, :cond_5

    .line 2204
    const-string v10, "android"

    .line 2205
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    :cond_5
    const-string v10, "com.viwoods.mtk"

    .line 2206
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "com.viwoods.settings"

    .line 2207
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "com.android.systemui"

    .line 2211
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2213
    :cond_6
    const-string v7, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Forbid setImpl for type: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " callingPackage: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " callingUid: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x2

    if-ne v1, v7, :cond_8

    const/4 v1, 0x3

    .line 2226
    :cond_8
    :goto_2
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v7, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide/16 v18, 0x0

    cmp-long v20, v4, v18

    if-lez v20, :cond_9

    cmp-long v20, v4, v9

    if-gez v20, :cond_9

    .line 2228
    const-string v7, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suspiciously short interval "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis; expanding to "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v9, v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v9

    goto :goto_3

    .line 2232
    :cond_9
    iget-wide v6, v7, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_a

    .line 2233
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspiciously long interval "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " millis; clamping"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    :cond_a
    :goto_3
    if-ltz v1, :cond_b

    const/4 v15, 0x3

    if-le v1, v15, :cond_c

    .line 2239
    :cond_b
    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->isPowerOffAlarmType(I)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_c
    cmp-long v6, v2, v18

    if-gez v6, :cond_d

    .line 2245
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    int-to-long v6, v6

    .line 2246
    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid alarm trigger time! "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " from uid="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v2, v18

    :cond_d
    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    .line 2252
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->schedulePoweroffAlarm(IJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)Z

    move-result v15

    move-wide/from16 v21, v2

    move-object v2, v6

    move-wide/from16 v6, v21

    move-object v3, v11

    if-nez v15, :cond_e

    return-void

    .line 2259
    :cond_e
    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->isPowerOffAlarmType(I)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v1, 0x0

    .line 2264
    :cond_f
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v8

    .line 2265
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v10

    .line 2268
    invoke-static {v14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v15

    if-eqz v15, :cond_10

    move-wide/from16 p1, v4

    move-wide/from16 v4, v18

    goto :goto_4

    :cond_10
    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    move-wide/from16 p1, v4

    iget-wide v4, v15, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_4
    add-long/2addr v4, v8

    .line 2269
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v10, v12, v18

    if-nez v10, :cond_11

    move-wide v8, v4

    move-wide v10, v8

    move-wide v4, v6

    :goto_5
    move-wide v6, v12

    goto/16 :goto_7

    :cond_11
    if-gez v10, :cond_12

    move-wide v10, v8

    move-wide v8, v4

    move-wide v4, v6

    move-wide v6, v10

    move-wide/from16 v10, p1

    .line 2275
    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    move-wide/from16 v21, v10

    move-wide v10, v8

    move-wide/from16 v8, v21

    sub-long v12, v6, v10

    move-wide/from16 p1, v8

    move-wide v8, v6

    goto :goto_5

    :cond_12
    move-wide v10, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide/from16 v8, p1

    .line 2280
    invoke-virtual {v0, v6, v7, v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v6

    const-wide/32 v18, 0x5265c00

    cmp-long v15, v12, v18

    if-lez v15, :cond_13

    .line 2282
    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Window length "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms too long; limiting to 1 day"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 p1, v8

    goto :goto_6

    :cond_13
    and-int/lit8 v15, p11, 0x40

    if-nez v15, :cond_14

    cmp-long v15, v12, v6

    if-gez v15, :cond_14

    .line 2286
    invoke-virtual {v0, v14}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v15

    if-nez v15, :cond_14

    const-wide/32 v14, 0xb09e9e4

    move-wide/from16 p1, v8

    .line 2288
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 2286
    invoke-static {v14, v15, v3, v8}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 2289
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Window length "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms too short; expanding to "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms."

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v6

    goto :goto_6

    :cond_14
    move-wide/from16 p1, v8

    :cond_15
    move-wide/from16 v18, v12

    :goto_6
    add-long v6, v10, v18

    move-wide v8, v6

    move-wide/from16 v6, v18

    .line 2296
    :goto_7
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2297
    :try_start_1
    sget-boolean v13, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v13, :cond_16

    .line 2298
    const-string v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ") : type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " triggerAtTime="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " win="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " tElapsed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " maxElapsed="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " interval="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p1

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " flags=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2298
    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v20, v12

    goto/16 :goto_a

    :cond_16
    move-wide/from16 v8, p1

    .line 2303
    :goto_8
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    move/from16 v14, p14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v15, v15, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-lt v13, v15, :cond_17

    .line 2304
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Maximum limit of concurrent alarms "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v15, v15, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " reached for uid: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-static {v14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", callingPackage: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2308
    const-string v15, "AlarmManager"

    invoke-static {v15, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_18

    .line 2312
    const-string v15, "234441463"

    const/16 v16, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v15, v0, v13}, [Ljava/lang/Object;

    move-result-object v0

    const v13, 0x534e4554

    invoke-static {v13, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_17
    move-object/from16 v0, p0

    move/from16 v13, p11

    move-object/from16 v15, p13

    move-object/from16 v18, p16

    move/from16 v19, p17

    move-object/from16 v17, v3

    move-object/from16 v20, v12

    move/from16 v16, v14

    move-object/from16 v12, p10

    move-object/from16 v14, p12

    move-wide/from16 v21, v10

    move-object/from16 v11, p9

    move-object v10, v2

    move-wide v2, v4

    move-wide/from16 v4, v21

    goto :goto_9

    .line 2310
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    :goto_9
    :try_start_2
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2318
    monitor-exit v20

    return-void

    :catchall_1
    move-exception v0

    :goto_a
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2240
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid alarm type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 21

    move-object/from16 v0, p0

    .line 2327
    new-instance v1, Lcom/android/server/alarm/Alarm;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object v2, v1

    move/from16 v1, v17

    .line 2330
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v4, p17

    invoke-virtual {v3, v1, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting alarm from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2335
    :cond_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    const/4 v3, 0x0

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 2336
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2337
    iget v3, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2338
    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2339
    invoke-static {v2, v1}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V

    return-void
.end method

.method public final setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .locals 4

    .line 2585
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 2598
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2603
    :cond_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 2604
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_0

    .line 2605
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_2

    .line 2606
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 2608
    :cond_2
    :goto_0
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 2609
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2610
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 2611
    :cond_3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2614
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_4

    .line 2615
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2619
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 2625
    :cond_4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 2626
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2628
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 2629
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2630
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 2631
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public final setLocked(IJ)V
    .locals 2

    .line 4196
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4197
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    return-void

    .line 4199
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    .line 4200
    iput v0, p1, Landroid/os/Message;->what:I

    .line 4202
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4203
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public setTimeImpl(JILjava/lang/String;)Z
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setCurrentTimeMillis(JILjava/lang/String;)V

    const/4 p0, 0x1

    .line 2122
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 2123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTimeZoneImpl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 2127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2131
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2135
    monitor-enter p0

    .line 2139
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    .line 2140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 2144
    invoke-static {p2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_1

    .line 2148
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2151
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x25200000

    .line 2152
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2156
    const-string/jumbo p3, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2158
    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v2

    const/16 v5, 0xcc

    const-string v6, ""

    const/4 v4, 0x0

    .line 2157
    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2161
    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 2164
    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    .line 2163
    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2140
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 4739
    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    invoke-virtual {v1, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4742
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_1
    if-ltz p2, :cond_2

    .line 4747
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p3, Landroid/os/WorkSource;

    invoke-direct {p3, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4754
    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public shouldAddWakeupForUser(I)Z
    .locals 2

    .line 3878
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 3879
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3886
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 4265
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4, v2, v3}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v8

    .line 4266
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v20, 0x0

    move/from16 v4, v20

    move/from16 v21, v4

    :goto_0
    const-string v5, "AlarmManager"

    if-ge v4, v9, :cond_a

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v22, v4, 0x1

    move-object v10, v6

    check-cast v10, Lcom/android/server/alarm/Alarm;

    .line 4267
    invoke-virtual {v0, v10}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4269
    sget-boolean v4, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_BG_LIMIT:Z

    if-eqz v4, :cond_0

    .line 4270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deferring alarm "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " due to user forced app standby"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_0
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v5, v10, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 4274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4275
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v6, v10, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4277
    :cond_1
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v22

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    .line 4281
    iput v11, v10, Lcom/android/server/alarm/Alarm;->count:I

    .line 4282
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    iget v4, v10, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    .line 4284
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v4, :cond_3

    move v4, v11

    goto :goto_1

    :cond_3
    move/from16 v4, v20

    :goto_1
    iget-object v5, v10, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 4287
    :cond_4
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v4, v10, :cond_5

    const/4 v4, 0x0

    .line 4288
    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4289
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v5, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v4, v5}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4301
    :cond_5
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v4, v10, :cond_6

    .line 4302
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4309
    :cond_6
    iget-wide v4, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    .line 4312
    iget v4, v10, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    invoke-virtual {v10}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-wide v12, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v12

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v10, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v4

    mul-long/2addr v12, v4

    .line 4315
    invoke-virtual {v10}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long/2addr v4, v12

    .line 4316
    iget-wide v6, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .line 4318
    iget v1, v10, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v2, v10, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v2, v12

    sub-long/2addr v6, v4

    move-object v12, v8

    move v13, v9

    iget-wide v8, v10, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v14, v10, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move v15, v13

    iget v13, v10, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 v16, v14

    iget-object v14, v10, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v17, v15

    iget-object v15, v10, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v11, v10, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v0, v10, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    const/16 v19, 0x1

    const/16 v18, 0x0

    move/from16 v23, v19

    const/16 v19, -0x1

    move-object/from16 v24, v10

    move-object/from16 v10, v16

    move/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v23, v17

    move-object/from16 v26, v24

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    move-object/from16 v6, v26

    goto :goto_2

    :cond_7
    move-object/from16 v25, v8

    move/from16 v23, v9

    move-object v6, v10

    .line 4324
    :goto_2
    iget-boolean v1, v6, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_8

    add-int/lit8 v21, v21, 0x1

    .line 4329
    :cond_8
    iget-object v1, v6, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    .line 4330
    iput-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    :cond_9
    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, v22

    move/from16 v9, v23

    move-object/from16 v8, v25

    goto/16 :goto_0

    .line 4334
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4335
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4337
    sget-boolean v0, Lcom/android/server/alarm/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_b

    move/from16 v0, v20

    .line 4338
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 4339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Triggering alarm #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    return v21
.end method

.method public final updateNextAlarmClockLocked()V
    .locals 12

    .line 3792
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 3795
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3797
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3798
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3800
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3801
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    .line 3802
    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v6, :cond_1

    .line 3803
    iget v6, v5, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3804
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3806
    sget-boolean v8, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v8, :cond_2

    .line 3807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found AlarmClockInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-static {v9, v10, v6}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3807
    const-string v9, "AlarmManager"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    :cond_2
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 3814
    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3815
    :cond_3
    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3816
    invoke-virtual {v7}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gtz v5, :cond_1

    .line 3818
    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3823
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_6

    .line 3825
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3826
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3827
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3828
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3829
    invoke-virtual {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3833
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_8

    .line 3835
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 3836
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    .line 3837
    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public final updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4

    const/4 v0, 0x1

    .line 3844
    const-string v1, "Next AlarmClockInfoForUser("

    const-string v2, "AlarmManager"

    if-eqz p2, :cond_1

    .line 3845
    sget-boolean v3, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v3, :cond_0

    .line 3846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3847
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3846
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3850
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_4

    .line 3851
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->shouldAddWakeupForUser(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3852
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 3853
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 3852
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/alarm/UserWakeupStore;->addUserWakeup(IJ)V

    goto :goto_0

    .line 3857
    :cond_1
    sget-boolean p2, Lcom/android/server/alarm/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz p2, :cond_2

    .line 3858
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): None"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    :cond_2
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_3

    .line 3861
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3862
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/UserWakeupStore;->removeUserWakeup(I)V

    .line 3865
    :cond_3
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3868
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3869
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3870
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
