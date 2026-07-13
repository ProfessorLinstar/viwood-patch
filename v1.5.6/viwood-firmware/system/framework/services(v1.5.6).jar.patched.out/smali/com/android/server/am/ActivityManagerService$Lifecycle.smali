.class public final Lcom/android/server/am/ActivityManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ActivityManagerService.java"


# static fields
.field public static sAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# instance fields
.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2267
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2268
    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    sget-object v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public static startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 2273
    sput-object p1, Lcom/android/server/am/ActivityManagerService$Lifecycle;->sAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2274
    const-class p1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getService()Lcom/android/server/am/ActivityManagerService;
    .locals 0

    .line 2319
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public onBootPhase(I)V
    .locals 2

    .line 2284
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p1, v0, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_0

    .line 2286
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Lcom/android/server/am/BatteryStatsService;->systemServicesReady()V

    .line 2287
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices;->systemServicesReady()V

    return-void

    :cond_0
    const/16 v1, 0x226

    if-ne p1, v1, :cond_1

    .line 2289
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastController:Lcom/android/server/am/BroadcastController;

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->startBroadcastObservers()V

    return-void

    :cond_1
    const/16 v1, 0x258

    if-ne p1, v1, :cond_2

    .line 2294
    iget-object p1, v0, Lcom/android/server/am/ActivityManagerService;->mCrashRecoveryHelper:Lcom/android/server/crashrecovery/CrashRecoveryHelper;

    invoke-virtual {p1}, Lcom/android/server/crashrecovery/CrashRecoveryHelper;->registerConnectivityModuleHealthListener()V

    .line 2296
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mscheduleHomeTimeout(Lcom/android/server/am/ActivityManagerService;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 2279
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mstart(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/BatteryStatsService;->onCleanupUser(I)V

    .line 2306
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2307
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 2308
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2310
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2311
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 2312
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Lifecycle;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$fgetmPrivateSpaceBootCompletedPackages(Lcom/android/server/am/ActivityManagerService;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 2313
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_0
    return-void
.end method
