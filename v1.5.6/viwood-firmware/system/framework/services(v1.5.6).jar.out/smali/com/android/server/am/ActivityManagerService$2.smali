.class public Lcom/android/server/am/ActivityManagerService$2;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .locals 0

    .line 1117
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchCancelled(J)V

    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .locals 7

    .line 1123
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V

    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;II)V
    .locals 9

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    .line 1101
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1105
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p5

    .line 1104
    invoke-virtual {v0, v2, p5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v8, p5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    const/4 p5, 0x0

    goto :goto_0

    .line 1110
    :goto_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v2

    int-to-long v6, p4

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppStartInfoTracker;->onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V

    .line 1112
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onIntentFailed(J)V
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentFailed(J)V

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 1

    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppStartInfoTracker;->onActivityIntentStarted(Landroid/content/Intent;J)V

    .line 1090
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReportFullyDrawn(JJ)V
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object p0

    .line 1130
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;

    move-result-object p0

    .line 1132
    invoke-static {}, Landroid/internal/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1134
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getStartType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 1135
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1136
    invoke-static {}, Landroid/os/ProfilingServiceHelper;->getInstance()Landroid/os/ProfilingServiceHelper;

    move-result-object p1

    .line 1137
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p3

    .line 1138
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1136
    invoke-virtual {p1, p3, p0, p2}, Landroid/os/ProfilingServiceHelper;->onProfilingTriggerOccurred(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
