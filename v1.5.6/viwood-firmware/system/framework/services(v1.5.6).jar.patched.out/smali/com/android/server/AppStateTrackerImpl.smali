.class public Lcom/android/server/AppStateTrackerImpl;
.super Ljava/lang/Object;
.source "AppStateTrackerImpl.java"

# interfaces
.implements Lcom/android/server/AppStateTracker;


# static fields
.field static final TARGET_OP:I = 0x46


# instance fields
.field public final mActiveUids:Landroid/util/SparseBooleanArray;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field public volatile mBackgroundRestrictedUidPackages:Ljava/util/Set;

.field public mBatterySaverEnabled:Z

.field public final mContext:Landroid/content/Context;

.field final mExemptedBucketPackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

.field public mForceAllAppStandbyForSmallBattery:Z

.field public mForceAllAppsStandby:Z

.field public final mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

.field public mIActivityManager:Landroid/app/IActivityManager;

.field public mIsPluggedIn:Z

.field public final mListeners:Landroid/util/ArraySet;

.field public final mLock:Ljava/lang/Object;

.field public mPowerExemptAllAppIds:[I

.field public mPowerExemptUserAppIds:[I

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRunAnyRestrictedPackages:Landroid/util/ArraySet;

.field public mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

.field public mStarted:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mTempExemptAppIds:[I


# direct methods
.method public static synthetic $r8$lambda$qVyUgEB05pGgqtZDT4yMA5Prsac(Lcom/android/server/AppStateTrackerImpl;Landroid/os/PowerSaveState;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/AppStateTrackerImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStatLogger(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/internal/util/jobs/StatLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcloneListeners(Lcom/android/server/AppStateTrackerImpl;)[Lcom/android/server/AppStateTrackerImpl$Listener;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBackgroundRestrictedUidPackagesLocked(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateForceAllAppStandbyState(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smaddUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smremoveUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 11

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 111
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 117
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 123
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 126
    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 132
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    .line 171
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 205
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v9, "IS_UID_ACTIVE_CACHED"

    const-string v10, "IS_UID_ACTIVE_RAW"

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNEXEMPTED"

    const-string v5, "ALL_EXEMPTION_LIST_CHANGED"

    const-string v6, "TEMP_EXEMPTION_LIST_CHANGED"

    const-string v7, "EXEMPTED_BUCKET_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 257
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$2;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    .line 444
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/AppStateTrackerImpl$3;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    .line 441
    new-instance p1, Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/AppStateTrackerImpl$MyHandler;-><init>(Lcom/android/server/AppStateTrackerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    return-void
.end method

.method public static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .locals 2

    .line 702
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 705
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 708
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v0
.end method

.method public static isAnyAppIdUnexempt([I[I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1085
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-lt v1, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v0

    .line 1086
    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_1

    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-nez v3, :cond_5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 1090
    :cond_2
    aget v3, p0, v1

    .line 1091
    aget v5, p1, v2

    if-ne v3, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ge v3, v5, :cond_3

    return v4

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    return v0

    :cond_6
    return v5
.end method

.method public static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 2

    .line 713
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 720
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 722
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addBackgroundRestrictedAppListener(Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/android/server/AppStateTrackerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppStateTrackerImpl$1;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    return-void
.end method

.method public addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1117
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public areAlarmsRestricted(ILjava/lang/String;)Z
    .locals 4

    .line 1127
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1132
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1133
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    return v1

    .line 1140
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z
    .locals 4

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1151
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1152
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1155
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1156
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1157
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1158
    monitor-exit v0

    return v1

    .line 1160
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    .line 1161
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .locals 4

    .line 1171
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1175
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1176
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1177
    invoke-static {v3, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isBgAutoRestrictedBucketFeatureFlagEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    .line 1185
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 1188
    monitor-exit v0

    return v1

    .line 1190
    :cond_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1191
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p3}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1192
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1193
    monitor-exit v0

    return v1

    .line 1195
    :cond_4
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    .line 1178
    :cond_5
    :goto_0
    monitor-exit v0

    return v1

    .line 1196
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 1

    .line 1035
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 1036
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1037
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1040
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cloneListeners()[Lcom/android/server/AppStateTrackerImpl$Listener;
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/AppStateTrackerImpl$Listener;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 796
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1289
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_0
    const-string v1, "Current AppStateTracker State:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1293
    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1296
    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1299
    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1302
    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1303
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1305
    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppStateTrackerImpl;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1308
    const-string v1, "Except-idle + user exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    const-string v1, "User exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    const-string v1, "Temp exemption list appids: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1315
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const-string v1, "Exempted bucket packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 1319
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1320
    const-string v3, "User "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1321
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1322
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1324
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v3, v1

    .line 1325
    :goto_1
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1326
    iget-object v4, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1329
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1331
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1332
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1334
    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1336
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1337
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    const-string v3, " "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    .line 1342
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1344
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1346
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    .line 1367
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1371
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    const-wide v2, 0x10800000001L

    .line 1370
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1373
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    const-wide v2, 0x10800000007L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1375
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    move v2, v1

    .line 1377
    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1378
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1379
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const-wide v4, 0x20500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    const-wide v6, 0x20500000003L

    .line 1384
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1387
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_3

    aget v5, v2, v4

    const-wide v6, 0x2050000000cL

    .line 1388
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1391
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    const-wide v6, 0x20500000004L

    .line 1392
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    move v2, v1

    .line 1395
    :goto_5
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10500000001L

    if-ge v2, v3, :cond_6

    move v3, v1

    .line 1396
    :goto_6
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v8

    if-ge v3, v8, :cond_5

    const-wide v8, 0x20b0000000aL

    .line 1397
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1399
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1400
    iget-object v10, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    .line 1401
    invoke-virtual {v10, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1400
    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1403
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1407
    :cond_6
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    const-wide v8, 0x20b00000005L

    .line 1408
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1410
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1411
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1413
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7

    .line 1416
    :cond_7
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v1, 0x10b00000009L

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1418
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1419
    monitor-exit v0

    return-void

    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 2

    .line 1350
    const-string p0, "["

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    const-string p0, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1354
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1355
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    const-string p0, " "

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    :cond_1
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .locals 4

    .line 659
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 661
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 664
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 666
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public handleUserRemoved(I)V
    .locals 3

    .line 1018
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1021
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1022
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    .line 1029
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/AppStateTrackerImpl;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 1030
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mExemptedBucketPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1031
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 567
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public injectAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .line 551
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;
    .locals 0

    .line 577
    const-class p0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppStandbyInternal;

    return-object p0
.end method

.method public injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .locals 0

    .line 587
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public injectIActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 562
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 0

    .line 556
    const-string p0, "appops"

    .line 557
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 556
    invoke-static {p0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p0

    return-object p0
.end method

.method public injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 0

    .line 572
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public isAppBackgroundRestricted(ILjava/lang/String;)Z
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isForceAllAppsStandbyEnabled()Z
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1237
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .locals 1

    .line 1247
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1249
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .locals 0

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSmallBatteryDevice()Z
    .locals 0

    .line 582
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result p0

    return p0
.end method

.method public isUidActive(I)Z
    .locals 1

    .line 1207
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUidActiveSynced(I)Z
    .locals 3

    .line 1221
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1226
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    .line 1227
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return p1
.end method

.method public isUidPowerSaveExempt(I)Z
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1260
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUidPowerSaveUserExempt(I)Z
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isUidTempPowerSaveExempt(I)Z
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onSystemServicesReady$0(Landroid/os/PowerSaveState;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemServicesReady()V
    .locals 6

    .line 487
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    if-eqz v1, :cond_0

    .line 489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 491
    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStarted:Z

    .line 493
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    .line 494
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 496
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 497
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 498
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->injectAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 500
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 501
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->register()V

    .line 502
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mFlagsObserver:Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;

    .line 503
    invoke-virtual {v1}, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 504
    new-instance v1, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTrackerImpl$StandbyTracker;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    iput-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mStandbyTracker:Lcom/android/server/AppStateTrackerImpl$StandbyTracker;

    .line 505
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 506
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mAppBackgroundRestrictionListener:Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->addAppBackgroundRestrictionListener(Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$UidObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$UidObserver;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl-IA;)V

    const/16 v4, 0x1e

    const/4 v5, -0x1

    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl-IA;)V

    const/16 v4, 0x46

    invoke-interface {v1, v4, v3, v2}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :catch_0
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 523
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 527
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 528
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 533
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/AppStateTrackerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    .line 545
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 546
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final refreshForcedAppStandbyUidPackagesLocked()V
    .locals 11

    .line 595
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 596
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    filled-new-array {v1}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 604
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 605
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    move v7, v3

    .line 607
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 608
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 609
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-eq v9, v1, :cond_1

    goto :goto_2

    .line 612
    :cond_1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_2

    .line 613
    iget-object v8, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 614
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 613
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 618
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return-void
.end method

.method public setPowerSaveExemptionListAppIds([I[I[I)V
    .locals 3

    .line 1052
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1054
    iget-object v2, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1056
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    .line 1057
    iput-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    .line 1058
    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    .line 1060
    invoke-static {v1, p1}, Lcom/android/server/AppStateTrackerImpl;->isAnyAppIdUnexempt([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllUnexempted()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1062
    :cond_0
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyAllExemptionListChanged()V

    .line 1066
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1067
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyTempExemptionListChanged()V

    .line 1070
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toggleForceAllAppsStandbyLocked(Z)V
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 652
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    .line 654
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl;->mHandler:Lcom/android/server/AppStateTrackerImpl$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyForceAllAppsStandbyChanged()V

    return-void
.end method

.method public final updateBackgroundRestrictedUidPackagesLocked()V
    .locals 4

    .line 627
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 628
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mBackgroundRestrictedUidPackages:Ljava/util/Set;

    return-void
.end method

.method public final updateForceAllAppStandbyState()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mIsPluggedIn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 639
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTrackerImpl;->mBatterySaverEnabled:Z

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTrackerImpl;->toggleForceAllAppsStandbyLocked(Z)V

    .line 641
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .locals 4

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTrackerImpl;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p3, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 693
    iget-object p3, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 695
    :cond_2
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 697
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateBackgroundRestrictedUidPackagesLocked()V

    return v2
.end method
