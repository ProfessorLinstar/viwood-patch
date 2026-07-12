.class public final Lcom/android/server/am/ServiceRecord;
.super Landroid/os/Binder;
.source "ServiceRecord.java"

# interfaces
.implements Landroid/content/ComponentName$WithComponentName;


# instance fields
.field public allowlistManager:Z

.field public final ams:Lcom/android/server/am/ActivityManagerService;

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindings:Landroid/util/ArrayMap;

.field public callStart:Z

.field public final connections:Landroid/util/ArrayMap;

.field public crashCount:I

.field public final createRealTime:J

.field public createdFromFg:Z

.field public final definingPackageName:Ljava/lang/String;

.field public final definingUid:I

.field public delayed:Z

.field public delayedStop:Z

.field public final deliveredStarts:Ljava/util/ArrayList;

.field public destroyTime:J

.field public destroying:Z

.field public executeFg:Z

.field public executeNesting:I

.field public executingStart:J

.field public final exported:Z

.field public fgDisplayTime:J

.field public fgRequired:Z

.field public fgWaiting:Z

.field public foregroundId:I

.field public foregroundNoti:Landroid/app/Notification;

.field public foregroundServiceType:I

.field public inSharedIsolatedProcess:Z

.field public final instanceName:Landroid/content/ComponentName;

.field public final intent:Landroid/content/Intent$FilterComparison;

.field public isForeground:Z

.field public isNotAppComponentUsage:Z

.field public final isSdkSandbox:Z

.field public isolationHostProc:Lcom/android/server/am/ProcessRecord;

.field public lastActivity:J

.field public lastStartId:I

.field public lastTopAlmostPerceptibleBindRequestUptimeMs:J

.field public mAdjSeq:I

.field public mAllowStartForegroundAtEntering:I

.field public mAllowStart_byBindings:I

.field public mAllowStart_inBindService:I

.field public mAllowStart_noBinding:I

.field public mAllowUiJobScheduling:Z

.field public mAllowWhileInUsePermissionInFgsAtEntering:Z

.field public mAllowWiu_byBindings:I

.field public mAllowWiu_inBindService:I

.field public mAllowWiu_noBinding:I

.field public mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

.field public mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

.field public mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

.field public mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

.field public mEarliestRestartTime:J

.field public mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

.field public mFgsEnterTime:J

.field public mFgsExitTime:J

.field public mFgsHasNotificationPermission:Z

.field public mFgsNotificationDeferred:Z

.field public mFgsNotificationShown:Z

.field public mFgsNotificationWasDeferred:Z

.field public mInfoAllowStartForeground:Ljava/lang/String;

.field public mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

.field public mIsAllowedBgActivityStartsByBinding:Z

.field public mIsFgsDelegate:Z

.field public mKeepWarming:Z

.field public mLoggedInfoAllowStartForeground:Z

.field public mProcessStateOnRequest:I

.field public mRecentCallerApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field public mRecentCallingPackage:Ljava/lang/String;

.field public mRecentCallingUid:I

.field public mRestartSchedulingTime:J

.field public mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

.field public mStartForegroundCount:I

.field public final name:Landroid/content/ComponentName;

.field public nextRestartTime:J

.field public final packageName:Ljava/lang/String;

.field public pendingConnectionGroup:I

.field public pendingConnectionImportance:I

.field public final pendingStarts:Ljava/util/ArrayList;

.field public final permission:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public restartCount:I

.field public restartDelay:J

.field public restartTime:J

.field public restartTracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final restarter:Ljava/lang/Runnable;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public final serviceInfo:Landroid/content/pm/ServiceInfo;

.field public final shortInstanceName:Ljava/lang/String;

.field public startCommandResult:I

.field public startRequested:Z

.field public startingBgTimeout:J

.field public stopIfKilled:Z

.field public stringName:Ljava/lang/String;

.field public systemRequestedFgToBg:Z

.field public totalRestartCount:I

.field public tracker:Lcom/android/internal/app/procstats/ServiceState;

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$KzqVHAivc5a2BQvDWrhUmMueE4I(Lcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->lambda$allowBgActivityStartsOnServiceStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ServiceRecord;->signalForegroundServiceNotification(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 3

    .line 1144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 209
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    const/4 v0, -0x1

    .line 215
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    const-wide/16 v1, 0x0

    .line 231
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsEnterTime:J

    .line 233
    iput-wide v1, p0, Lcom/android/server/am/ServiceRecord;->mFgsExitTime:J

    .line 245
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 248
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStartForegroundAtEntering:I

    .line 257
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 260
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    .line 263
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 266
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    .line 1145
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 1146
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 1147
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 1148
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    .line 1149
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord;->definingPackageName:Ljava/lang/String;

    .line 1150
    iput p5, p0, Lcom/android/server/am/ServiceRecord;->definingUid:I

    .line 1151
    iput-object p6, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 1152
    iput-object p7, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1153
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1154
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eq p11, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1155
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->isSdkSandbox:Z

    .line 1156
    iput p11, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppUid:I

    move-object p1, p12

    .line 1157
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    move/from16 p1, p13

    .line 1158
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->inSharedIsolatedProcess:Z

    .line 1159
    iput-object p10, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 1160
    iget-object p1, p7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    .line 1161
    iget-boolean p1, p7, Landroid/content/pm/ServiceInfo;->exported:Z

    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->exported:Z

    .line 1162
    iput-object p9, p0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    .line 1163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1165
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1166
    iput-boolean p8, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateFgsHasNotificationPermission()V

    return-void
.end method

.method public static reasonOr(II)I
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static reasonOr(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 423
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addConnection(Landroid/os/IBinder;Lcom/android/server/am/ConnectionRecord;)V
    .locals 4

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_1

    .line 1297
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget v0, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ConnectionRecord;->getFlags()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/am/ProcessServiceRecord;->addBoundClientUid(ILjava/lang/String;J)V

    .line 1298
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    :cond_1
    return-void
.end method

.method public allowBgActivityStartsOnServiceStart(Landroid/app/BackgroundStartPrivileges;)V
    .locals 3

    .line 1351
    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1352
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1354
    invoke-virtual {p1, v0}, Landroid/app/BackgroundStartPrivileges;->merge(Landroid/app/BackgroundStartPrivileges;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p1

    .line 1353
    invoke-virtual {p0, p1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V

    .line 1355
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 1356
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1360
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 1361
    new-instance p1, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/ServiceRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ServiceRecord;)V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    .line 1410
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v1, p1, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public allowedChanged(II)Z
    .locals 2

    .line 0
    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-ne p2, v1, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p0

    :goto_1
    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    return p0
.end method

.method public canStopIfKilled(Z)Z
    .locals 2

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1319
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public cancelNotification()V
    .locals 7

    .line 1711
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1712
    iget v5, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1713
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1714
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1715
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/am/ServiceRecord$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord$3;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearDeliveredStartsLocked()V
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    invoke-virtual {v1}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1769
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearFgsAllowStart()V
    .locals 1

    const/4 v0, -0x1

    .line 406
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    .line 407
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    .line 408
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    return-void
.end method

.method public clearFgsAllowWiu()V
    .locals 1

    const/4 v0, -0x1

    .line 400
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    .line 401
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    .line 402
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    return-void
.end method

.method public clearShortFgsInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1826
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-void
.end method

.method public createTimeLimitedFgsInfo()Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
    .locals 0

    .line 1885
    new-instance p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;

    invoke-direct {p0}, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13

    .line 929
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "intent={"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x7d

    .line 931
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 932
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "packageName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "processName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "targetSdkVersion="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 935
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 936
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "permission="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 938
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 940
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    .line 941
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v9, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 943
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    :cond_2
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "app="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 948
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3

    .line 949
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isolationHostProc="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 951
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    if-eqz v3, :cond_4

    .line 952
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "allowlistManager="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 954
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v3, :cond_5

    .line 955
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsAllowedBgActivityStartsByBinding="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 956
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 958
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 959
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mIsAllowedBgActivityStartsByStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 963
    :cond_6
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewWiuLogic_forCapabilities()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forCapabilities()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 965
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewWiuLogic_forStart()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forStart()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 967
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "useNewBfslLogic()="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewBfslLogic()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 970
    const-string/jumbo v3, "mAllowWiu_noBinding"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 971
    const-string/jumbo v3, "mAllowWiu_inBindService"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 972
    const-string/jumbo v3, "mAllowWiu_byBindings"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 974
    const-string v3, "getFgsAllowWiu_legacy"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 975
    const-string v3, "getFgsAllowWiu_new"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 977
    const-string v3, "getFgsAllowWiu_forStart"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 978
    const-string v3, "getFgsAllowWiu_forCapabilities"

    .line 979
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forCapabilities()I

    move-result v9

    .line 978
    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 981
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "allowUiJobScheduling="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 982
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "recentCallingPackage="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 983
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "recentCallingUid="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 987
    const-string/jumbo v3, "mAllowStart_noBinding"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 988
    const-string/jumbo v3, "mAllowStart_inBindService"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 989
    const-string/jumbo v3, "mAllowStart_byBindings"

    iget v9, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 991
    const-string v3, "getFgsAllowStart_legacy"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 992
    const-string v3, "getFgsAllowStart_new"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 993
    const-string v3, "getFgsAllowStart"

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v9

    invoke-virtual {p0, p1, p2, v3, v9}, Lcom/android/server/am/ServiceRecord;->dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    .line 995
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "startForegroundCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 996
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 997
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "infoAllowStartForeground="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mInfoAllowStartForeground:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v3, :cond_7

    .line 1001
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "delayed="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1003
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_8

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v3, :cond_9

    .line 1004
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isForeground="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1005
    const-string v3, " foregroundId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1006
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, " types=0x%08X"

    invoke-virtual {p1, v9, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1007
    const-string v3, " foregroundNoti="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v3, :cond_9

    .line 1010
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "isShortFgs=true"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string v3, " startId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1012
    const-string v3, " startForegroundCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartForegroundCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1014
    const-string v3, " startTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1016
    const-string v3, " timeout="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1018
    const-string v3, " demoteTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1020
    const-string v3, " anrTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v9

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1022
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1025
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    if-eqz v3, :cond_a

    .line 1026
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "isFgsDelegate="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1028
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "createTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1029
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    invoke-static {v9, v10, v7, v8, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1030
    const-string v3, " startingBgTimeout="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1032
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1033
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "lastActivity="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1035
    const-string v3, " restartTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1037
    const-string v3, " createdFromFg="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1038
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    if-eqz v3, :cond_b

    .line 1039
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " pendingConnectionGroup="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1041
    const-string v3, " Importance="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1043
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v3, :cond_c

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v3, :cond_d

    .line 1044
    :cond_c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "startRequested="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1045
    const-string v3, " delayedStop="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1046
    const-string v3, " stopIfKilled="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1047
    const-string v3, " callStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1048
    const-string v3, " lastStartId="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1049
    const-string v3, " startCommandResult="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1051
    :cond_d
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v3, :cond_e

    .line 1052
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "executeNesting="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1053
    const-string v3, " executeFg="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1054
    const-string v3, " executingStart="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    iget-wide v7, p0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static {v7, v8, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1056
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1058
    :cond_e
    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_f

    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_10

    .line 1059
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "destroying="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1060
    const-string v3, " destroyTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1062
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1064
    :cond_10
    iget v3, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v3, :cond_11

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v3, :cond_11

    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v11, v9, v11

    cmp-long v3, v11, v7

    if-nez v3, :cond_11

    cmp-long v3, v9, v7

    if-eqz v3, :cond_12

    .line 1066
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "restartCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1067
    const-string v3, " restartDelay="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long/2addr v9, v11

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1069
    const-string v3, " nextRestartTime="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-wide v9, p0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-static {v9, v10, v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1071
    const-string v3, " crashCount="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1073
    :cond_12
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_13

    .line 1074
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Delivered Starts:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1077
    :cond_13
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 1078
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Starts:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ServiceRecord;->dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V

    .line 1081
    :cond_14
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const-string v4, "  "

    if-lez v3, :cond_16

    .line 1082
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Bindings:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    .line 1083
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 1084
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/IntentBindRecord;

    .line 1085
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "* IntentBindRecord{"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v5}, Lcom/android/server/am/IntentBindRecord;->collectFlags()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_15

    .line 1088
    const-string v9, " CREATE"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1090
    :cond_15
    const-string/jumbo v9, "}:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, p1, v9}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1094
    :cond_16
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 1095
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "All Connections:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v6

    .line 1096
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    .line 1097
    iget-object v5, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move v7, v6

    .line 1098
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    .line 1099
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 786
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 787
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 788
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v14, 0x10800000002L

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 789
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-wide v3, 0x10500000003L

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    :cond_1
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_2

    .line 793
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v5, v3

    const-wide v3, 0x10b00000004L

    move-wide/from16 v16, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    move-wide/from16 v13, v16

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-wide v13, v3

    :goto_1
    const-wide v2, 0x10900000005L

    .line 796
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000006L

    .line 797
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10900000007L

    .line 798
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 802
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_4

    const-wide v13, 0x10b00000008L

    .line 803
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 804
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 805
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 806
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 808
    :cond_3
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-wide v11, 0x10900000003L

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 809
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 810
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 812
    :cond_4
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_5

    const-wide v11, 0x10b00000009L

    .line 813
    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 815
    :cond_5
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_6

    const-wide v11, 0x10b0000000aL

    .line 816
    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_6
    const-wide v11, 0x1080000000bL

    .line 818
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x1080000000cL

    .line 819
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayed:Z

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 820
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const-wide v11, 0x10500000001L

    if-nez v2, :cond_7

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v2, :cond_8

    :cond_7
    const-wide v13, 0x10b0000000dL

    .line 821
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 822
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 823
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/Notification;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 824
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const-wide v3, 0x10500000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 826
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_8
    const-wide v2, 0x10b0000000eL

    .line 828
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    const-wide v13, 0x10500000004L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b0000000fL

    .line 829
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    move-object/from16 v1, p1

    move-wide v6, v15

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000010L

    .line 831
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000011L

    .line 832
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10800000012L

    .line 833
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000001bL

    .line 837
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v4

    .line 836
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 839
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v2, :cond_9

    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-nez v2, :cond_9

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-eqz v2, :cond_a

    :cond_9
    const-wide v2, 0x10b00000013L

    .line 840
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10800000001L

    .line 841
    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 842
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    const-wide v13, 0x10800000002L

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000003L

    .line 843
    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10500000005L

    .line 844
    iget v8, v0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10500000006L

    .line 845
    iget v8, v0, Lcom/android/server/am/ServiceRecord;->startCommandResult:I

    invoke-virtual {v1, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 846
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 849
    :cond_a
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eqz v2, :cond_b

    const-wide v2, 0x10b00000014L

    .line 850
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 851
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 852
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10b00000003L

    .line 853
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->executingStart:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 855
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 857
    :cond_b
    iget-boolean v2, v0, Lcom/android/server/am/ServiceRecord;->destroying:Z

    const-wide/16 v13, 0x0

    if-nez v2, :cond_c

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_d

    :cond_c
    const-wide v2, 0x10b00000015L

    .line 858
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 860
    :cond_d
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-nez v2, :cond_e

    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    if-nez v2, :cond_e

    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v13

    if-nez v4, :cond_e

    cmp-long v2, v2, v13

    if-eqz v2, :cond_f

    :cond_e
    const-wide v2, 0x10b00000016L

    .line 862
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 863
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 864
    iget-wide v2, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    sub-long v4, v2, v4

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    const-wide v2, 0x10b00000003L

    .line 866
    iget-wide v4, v0, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 868
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->crashCount:I

    const-wide v3, 0x10500000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 869
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 872
    :cond_f
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 873
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_10

    .line 875
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000017L

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-wide v6, v5

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 879
    :cond_10
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 880
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_11

    .line 882
    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    const-wide v3, 0x20b00000018L

    move-object/from16 v2, p1

    move-wide v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move-object v1, v2

    move-wide v6, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_11
    move-object/from16 v1, p1

    .line 885
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 886
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_12

    .line 888
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    const-wide v5, 0x20b00000019L

    .line 889
    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/am/IntentBindRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 892
    :cond_12
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 893
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_14

    .line 895
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 896
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 897
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    const-wide v7, 0x20b0000001aL

    invoke-virtual {v6, v1, v7, v8}, Lcom/android/server/am/ConnectionRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 901
    :cond_14
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_15

    const-wide v2, 0x10b0000001cL

    .line 902
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 903
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 904
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartTime()J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    .line 903
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 905
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 906
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getStartId()I

    move-result v4

    const-wide v13, 0x10500000003L

    .line 905
    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 907
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 908
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v4

    const-wide v6, 0x10300000004L

    .line 907
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 909
    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 910
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v4

    const-wide v6, 0x10300000005L

    .line 909
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 911
    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    .line 912
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v4

    const-wide v6, 0x10300000006L

    .line 911
    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 913
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 918
    :cond_15
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpReasonCode(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 922
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    const-string p0, "="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    invoke-static {p4}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpStartList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;J)V
    .locals 4

    .line 756
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_6

    .line 758
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 760
    const-string v2, " id="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_0

    .line 762
    const-string v2, " dur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    invoke-static {v2, v3, p4, p5, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 765
    :cond_0
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-eqz v2, :cond_1

    .line 766
    const-string v2, " dc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 768
    :cond_1
    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-eqz v2, :cond_2

    .line 769
    const-string v2, " dxc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 771
    :cond_2
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  intent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_3
    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    :goto_1
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    if-eqz v2, :cond_4

    .line 776
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  neededGrants="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/uri/NeededUriGrants;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 779
    :cond_4
    iget-object v1, v1, Lcom/android/server/am/ServiceRecord$StartItem;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v1, :cond_5

    .line 780
    invoke-virtual {v1, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;
    .locals 4

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1539
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 1540
    iget v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    if-ne v3, p2, :cond_1

    if-eqz p3, :cond_0

    .line 1541
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public forceClearTracker()V
    .locals 2

    .line 1191
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1192
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    const/4 v0, 0x0

    .line 1193
    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    :cond_0
    return-void
.end method

.method public final getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;
    .locals 1

    .line 1466
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    if-eqz v0, :cond_0

    .line 1467
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 1472
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1789
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getConnections()Landroid/util/ArrayMap;
    .locals 0

    .line 1284
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getFgsAllowStart()I
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewBfslLogic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result p0

    return p0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result p0

    return p0
.end method

.method public final getFgsAllowStart_legacy()I
    .locals 2

    .line 364
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(III)I

    move-result p0

    return p0
.end method

.method public final getFgsAllowStart_new()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public getFgsAllowWiu_forCapabilities()I
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forCapabilities()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result p0

    return p0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result p0

    return p0
.end method

.method public getFgsAllowWiu_forStart()I
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->useNewWiuLogic_forStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result p0

    return p0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result p0

    return p0
.end method

.method public final getFgsAllowWiu_legacy()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public final getFgsAllowWiu_new()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    invoke-static {v0, p0}, Lcom/android/server/am/ServiceRecord;->reasonOr(II)I

    move-result p0

    return p0
.end method

.method public final getFgsInfoForWtf()Ljava/lang/String;
    .locals 2

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cmp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sdk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastStartId()I
    .locals 0

    .line 1550
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public getShortFgsInfo()Lcom/android/server/am/ServiceRecord$ShortFgsInfo;
    .locals 1

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortFgsTimedEventDescription(J)Ljava/lang/String;
    .locals 2

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isAppAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isfg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1875
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sfc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getDescription()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTracker()Lcom/android/internal/app/procstats/ServiceState;
    .locals 10

    .line 1175
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    return-object v0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 1179
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_1

    .line 1184
    invoke-virtual {v0, p0}, Lcom/android/internal/app/procstats/ServiceState;->applyNewOwner(Ljava/lang/Object;)V

    .line 1187
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    return-object p0
.end method

.method public hasAutoCreateConnections()Z
    .locals 5

    .line 1504
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1505
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1506
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1507
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hasShortFgsInfo()Z
    .locals 0

    .line 1819
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isAppAlive()Z
    .locals 2

    .line 1899
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1902
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFgsAllowedStart()Z
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsAllowedWiu_forCapabilities()Z
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forCapabilities()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsAllowedWiu_forStart()Z
    .locals 1

    .line 348
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_forStart()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFgsTimeLimited()Z
    .locals 1

    .line 1892
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 1894
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActiveServices;->getTimeLimitedFgsType(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShortFgs()Z
    .locals 1

    .line 1802
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const/16 v0, 0x800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$allowBgActivityStartsOnServiceStart$0()V
    .locals 4

    .line 1362
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1364
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1366
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStart:Ljava/util/ArrayList;

    .line 1367
    invoke-static {v1}, Landroid/app/BackgroundStartPrivileges;->merge(Ljava/util/List;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1371
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    .line 1379
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v2

    .line 1378
    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1382
    :cond_0
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service callback to revoke bg activity starts by service start triggered but mBackgroundStartPrivilegesByStartMerged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". This should never happen."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1391
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-ne v1, v2, :cond_2

    .line 1395
    sget-object v1, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1400
    invoke-virtual {v2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 1402
    iput-object v1, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1404
    :cond_4
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public makeNextStartId()I
    .locals 2

    .line 1554
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    if-ge v0, v1, :cond_0

    .line 1556
    iput v1, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    .line 1558
    :cond_0
    iget p0, p0, Lcom/android/server/am/ServiceRecord;->lastStartId:I

    return p0
.end method

.method public makeRestarting(IJ)V
    .locals 10

    .line 1198
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-nez v0, :cond_1

    return-void

    .line 1210
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    return-void
.end method

.method public maybeLogFgsLogicChange()V
    .locals 8

    .line 439
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_legacy()I

    move-result v0

    .line 440
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowWiu_new()I

    move-result v1

    .line 442
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_legacy()I

    move-result v2

    .line 443
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart_new()I

    move-result v3

    .line 445
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ServiceRecord;->allowedChanged(II)Z

    move-result v4

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ServiceRecord;->allowedChanged(II)Z

    move-result v5

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    return-void

    .line 451
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FGS logic changed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v7, ""

    if-eqz v4, :cond_1

    const-string v4, " [WIU changed]"

    goto :goto_0

    :cond_1
    move-object v4, v7

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_2

    .line 453
    const-string v7, " [BFSL changed]"

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Orig WIU:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New WIU:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {v1}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Orig BFSL:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-static {v2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " New BFSL:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {v3}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getFgsInfoForWtf()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 463
    sget-object v0, Lcom/android/server/am/ActiveServices;->TAG_SERVICE:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postNotification(Z)V
    .locals 11

    .line 1581
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    .line 1582
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1583
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 1586
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1587
    iget v8, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1588
    iget-object v6, p0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1590
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v0, :cond_0

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for foreground service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ServiceRecord$2;

    move-object v10, p0

    move-object v3, p0

    move v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ServiceRecord$2;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public removeConnection(Landroid/os/IBinder;)V
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p1, :cond_0

    .line 1306
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1307
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_0
    return-void
.end method

.method public resetRestartCounter()V
    .locals 2

    const/4 v0, 0x0

    .line 1529
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->restartCount:I

    const-wide/16 v0, 0x0

    .line 1530
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 1531
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 1532
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mEarliestRestartTime:J

    .line 1533
    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord;->mRestartSchedulingTime:J

    return-void
.end method

.method public retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;
    .locals 2

    .line 1486
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1487
    iget-object p1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/IntentBindRecord;

    if-nez p1, :cond_0

    .line 1489
    new-instance p1, Lcom/android/server/am/IntentBindRecord;

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/IntentBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V

    .line 1490
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_1

    return-object v0

    .line 1496
    :cond_1
    new-instance v0, Lcom/android/server/am/AppBindRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/AppBindRecord;-><init>(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1497
    iget-object p0, p1, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public setAllowedBgActivityStartsByBinding(Z)V
    .locals 0

    .line 1340
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mIsAllowedBgActivityStartsByBinding:Z

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public final setAllowedBgActivityStartsByStart(Landroid/app/BackgroundStartPrivileges;)V
    .locals 1

    .line 1422
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    if-ne v0, p1, :cond_0

    return-void

    .line 1425
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    .line 1426
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateParentProcessBgActivityStartsToken()V

    return-void
.end method

.method public setProcess(Lcom/android/server/am/ProcessRecord;Landroid/app/IApplicationThread;ILcom/android/server/am/UidRecord;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1219
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    .line 1222
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1223
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object p3, p0, Lcom/android/server/am/ServiceRecord;->mCleanUpAllowBgActivityStartsByStartCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1228
    :cond_0
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1229
    :goto_0
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord;->mAppForAllowingBgActivityStartsByStart:Lcom/android/server/am/ProcessRecord;

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object p2

    .line 1232
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1233
    invoke-virtual {p1, p0, p2}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    goto :goto_1

    .line 1236
    :cond_2
    invoke-virtual {p1, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1239
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p2, :cond_5

    if-eq p2, p1, :cond_5

    .line 1243
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->mBackgroundStartPrivilegesByStartMerged:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsNothing()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1244
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 1246
    :cond_4
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1247
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 1249
    :cond_5
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/ProcessStateController;->setHostProcess(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;)V

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->updateProcessStateOnRequest()V

    .line 1251
    iget p2, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    const/4 p3, 0x0

    if-lez p2, :cond_6

    if-eqz p1, :cond_6

    .line 1252
    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1253
    invoke-virtual {p2, p0}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionService(Lcom/android/server/am/ServiceRecord;)V

    .line 1254
    iget p4, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionGroup(I)V

    .line 1255
    iget p4, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    invoke-virtual {p2, p4}, Lcom/android/server/am/ProcessServiceRecord;->setConnectionImportance(I)V

    .line 1256
    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionImportance:I

    iput p3, p0, Lcom/android/server/am/ServiceRecord;->pendingConnectionGroup:I

    .line 1259
    :cond_6
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_9

    .line 1260
    iget-object p4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    move v0, p3

    .line 1261
    :goto_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1262
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    if-eqz p1, :cond_7

    .line 1264
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->startAssociationIfNeeded()V

    goto :goto_4

    .line 1266
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/ConnectionRecord;->stopAssociation()V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_9
    if-eqz p1, :cond_a

    .line 1272
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateBoundClientUids()V

    .line 1273
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_a
    return-void
.end method

.method public setShortFgsInfo(J)V
    .locals 1

    .line 1814
    new-instance v0, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;-><init>(Lcom/android/server/am/ServiceRecord;J)V

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    return-void
.end method

.method public shouldDemoteShortFgsProcState(J)Z
    .locals 2

    .line 1854
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getProcStateDemoteTime()J

    move-result-wide v0

    .line 1853
    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public shouldTriggerShortFgsAnr(J)Z
    .locals 2

    .line 1864
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getAnrTime()J

    move-result-wide v0

    .line 1863
    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public final shouldTriggerShortFgsTimedEvent(JJ)Z
    .locals 2

    .line 1830
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isAppAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1833
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->isShortFgs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-eqz p0, :cond_2

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->isCurrent()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    cmp-long p0, p1, p3

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public shouldTriggerShortFgsTimeout(J)Z
    .locals 2

    .line 1845
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->mShortFgsInfo:Lcom/android/server/am/ServiceRecord$ShortFgsInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord$ShortFgsInfo;->getTimeoutTime()J

    move-result-wide v0

    .line 1844
    :goto_0
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/am/ServiceRecord;->shouldTriggerShortFgsTimedEvent(JJ)Z

    move-result p0

    return p0
.end method

.method public final signalForegroundServiceNotification(Ljava/lang/String;IIZ)V
    .locals 3

    .line 1736
    iget-object p2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    .line 1737
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mForegroundServiceStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, p1, v2, p3, p4}, Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;->onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1741
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public stripForegroundServiceFlagFromNotification()V
    .locals 5

    .line 1745
    iget v0, p0, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1746
    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1747
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1751
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ServiceRecord$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/server/am/ServiceRecord$4;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1773
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1776
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1777
    const-string v1, "ServiceRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 1779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 1780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1781
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1782
    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->mRecentCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ServiceRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateAllowUiJobScheduling(Z)V
    .locals 1

    .line 1415
    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1418
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/ServiceRecord;->mAllowUiJobScheduling:Z

    return-void
.end method

.method public updateAllowlistManager()V
    .locals 7

    const/4 v0, 0x0

    .line 1516
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    .line 1517
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    .line 1518
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move v4, v0

    .line 1519
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1520
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v6}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1521
    iput-boolean v2, p0, Lcom/android/server/am/ServiceRecord;->allowlistManager:Z

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateFgsHasNotificationPermission()V
    .locals 4

    .line 1563
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1564
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1566
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ServiceRecord$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ServiceRecord$1;-><init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateIsAllowedBgActivityStartsByBinding()V
    .locals 8

    .line 1324
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 1325
    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move v5, v2

    .line 1326
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1327
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    const/high16 v7, 0x100000

    invoke-virtual {v6, v7}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1336
    :cond_3
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/server/am/ServiceRecord;->setAllowedBgActivityStartsByBinding(Z)V

    return-void
.end method

.method public updateKeepWarmLocked()V
    .locals 5

    .line 1477
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1478
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ServiceRecord;->userId:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1479
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    .line 1480
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v4, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    return-void
.end method

.method public updateOomAdjSeq()V
    .locals 1

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    :cond_0
    return-void
.end method

.method public final updateParentProcessBgActivityStartsToken()V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    return-void

    .line 1445
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ServiceRecord;->getBackgroundStartPrivilegesWithExclusiveToken()Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1449
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    return-void
.end method

.method public updateProcessStateOnRequest()V
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lcom/android/server/am/ServiceRecord;->mProcessStateOnRequest:I

    return-void
.end method

.method public final useNewBfslLogic()Z
    .locals 2

    .line 296
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x128cab2d

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public final useNewWiuLogic_forCapabilities()Z
    .locals 2

    .line 289
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x12b256f1

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public final useNewWiuLogic_forStart()Z
    .locals 2

    .line 282
    iget-object p0, p0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/32 v0, 0x128caab5

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public wasOomAdjUpdated()Z
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/ServiceRecord;->mAdjSeq:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
