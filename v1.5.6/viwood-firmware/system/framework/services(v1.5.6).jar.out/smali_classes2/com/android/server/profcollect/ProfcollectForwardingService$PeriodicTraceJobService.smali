.class public Lcom/android/server/profcollect/ProfcollectForwardingService$PeriodicTraceJobService;
.super Landroid/app/job/JobService;
.source "ProfcollectForwardingService.java"


# static fields
.field public static final JOB_SERVICE_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 294
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/profcollect/ProfcollectForwardingService$PeriodicTraceJobService;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/profcollect/ProfcollectForwardingService$PeriodicTraceJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    .line 302
    const-string v0, "collection_interval"

    const/16 v1, 0x258

    const-string/jumbo v2, "profcollect_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 304
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 305
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x3ae37

    sget-object v3, Lcom/android/server/profcollect/ProfcollectForwardingService$PeriodicTraceJobService;->JOB_SERVICE_NAME:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v0

    .line 306
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/16 v1, 0x12c

    .line 308
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPriority(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 314
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    const-string/jumbo v1, "periodic"

    invoke-static {v0, v1}, Lcom/android/server/profcollect/Utils;->traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 317
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
