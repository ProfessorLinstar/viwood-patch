.class public Lcom/android/server/net/watchlist/ReportWatchlistJobService;
.super Landroid/app/job/JobService;
.source "ReportWatchlistJobService.java"


# static fields
.field public static final REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 4

    .line 64
    const-string v0, "jobscheduler"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 66
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/net/watchlist/ReportWatchlistJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0xd7689

    invoke-direct {v1, p0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v2, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 45
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0xd7689

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 49
    :cond_0
    new-instance v0, Landroid/net/NetworkWatchlistManager;

    invoke-direct {v0, p0}, Landroid/net/NetworkWatchlistManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->reportWatchlistIfNecessary()V

    .line 50
    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
