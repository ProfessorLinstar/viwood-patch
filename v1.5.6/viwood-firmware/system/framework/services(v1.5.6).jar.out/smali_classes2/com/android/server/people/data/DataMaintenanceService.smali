.class public Lcom/android/server/people/data/DataMaintenanceService;
.super Landroid/app/job/JobService;
.source "DataMaintenanceService.java"


# static fields
.field public static final JOB_RUN_INTERVAL:J


# instance fields
.field public mSignal:Landroid/os/CancellationSignal;


# direct methods
.method public static synthetic $r8$lambda$kolm1Usqgw5loMXBvPGzy8r4PBk(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/data/DataMaintenanceService;->lambda$onStartJob$0(ILandroid/app/job/JobParameters;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 1

    .line 58
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 59
    invoke-static {p1}, Lcom/android/server/people/data/DataMaintenanceService;->getJobId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public static getJobId(I)I
    .locals 1

    .line 0
    const v0, 0xc315bd7

    add-int/2addr p0, v0

    return p0
.end method

.method public static getUserId(I)I
    .locals 1

    .line 0
    const v0, 0xc315bd7

    sub-int/2addr p0, v0

    return p0
.end method

.method public static scheduleJob(Landroid/content/Context;I)V
    .locals 3

    .line 45
    invoke-static {p1}, Lcom/android/server/people/data/DataMaintenanceService;->getJobId(I)I

    move-result p1

    .line 46
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 47
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/server/people/data/DataMaintenanceService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0, p1, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    sget-wide v1, Lcom/android/server/people/data/DataMaintenanceService;->JOB_RUN_INTERVAL:J

    .line 51
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStartJob$0(ILandroid/app/job/JobParameters;)V
    .locals 2

    .line 69
    const-class v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 70
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/PeopleServiceInternal;

    .line 71
    iget-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/people/PeopleServiceInternal;->pruneDataForUser(ILandroid/os/CancellationSignal;)V

    .line 72
    iget-object p1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 66
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/people/data/DataMaintenanceService;->getUserId(I)I

    move-result v0

    .line 67
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    .line 68
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/people/data/DataMaintenanceService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataMaintenanceService;ILandroid/app/job/JobParameters;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/people/data/DataMaintenanceService;->mSignal:Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
