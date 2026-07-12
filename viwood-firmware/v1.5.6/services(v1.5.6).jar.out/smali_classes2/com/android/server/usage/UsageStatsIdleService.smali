.class public Lcom/android/server/usage/UsageStatsIdleService;
.super Landroid/app/job/JobService;
.source "UsageStatsIdleService.java"


# direct methods
.method public static synthetic $r8$lambda$KuQoq8cHCLRKU1N4IbiKONHBE18(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsIdleService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJobInternal(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 101
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 104
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static cancelPruneJob(Landroid/content/Context;I)V
    .locals 1

    .line 93
    const-string/jumbo v0, "usagestats_prune"

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static cancelUpdateMappingsJob(Landroid/content/Context;I)V
    .locals 1

    .line 97
    const-string/jumbo v0, "usagestats_mapping"

    invoke-static {p0, v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJobInternal(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;I)V
    .locals 1

    .line 82
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 83
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 84
    invoke-virtual {p0, p3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 87
    invoke-virtual {p0, p3}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 88
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method public static schedulePruneJob(Landroid/content/Context;I)V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/usage/UsageStatsIdleService;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 55
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 57
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "usagestats_prune"

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public static scheduleUpdateMappingsJob(Landroid/content/Context;I)V
    .locals 5

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/server/usage/UsageStatsIdleService;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 69
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v2, p1, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 71
    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    .line 72
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const-wide/16 v3, 0x2

    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "usagestats_mapping"

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJobInternal(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;I)V
    .locals 3

    .line 119
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 121
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobNamespace()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "usagestats_mapping"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->updatePackageMappingsData(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/usage/UsageStatsManagerInternal;->pruneUninstalledPackagesData(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 129
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 110
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "user_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_0
    new-instance v1, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/usage/UsageStatsIdleService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsIdleService;Landroid/app/job/JobParameters;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
