.class public Lcom/android/server/notification/NotificationBitmapJobService;
.super Landroid/app/job/JobService;
.source "NotificationBitmapJobService.java"


# direct methods
.method public static synthetic $r8$lambda$B6y94-Bm2syGb4kH-v-OjmYgWHs(Lcom/android/server/notification/NotificationBitmapJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationBitmapJobService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static getRunAfterMs()J
    .locals 5

    .line 77
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 81
    invoke-static {v3, v4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v3

    .line 83
    invoke-static {v2, v3, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 84
    invoke-virtual {v0, v2, v3}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 86
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/NotificationBitmapJobService;->getTimeUntilRemoval(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeUntilRemoval(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)J
    .locals 1

    .line 92
    invoke-static {p0, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    return-wide p0

    .line 95
    :cond_0
    invoke-static {p0, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static scheduleJob(Landroid/content/Context;)V
    .locals 5

    .line 48
    const-string v0, "NotificationBitmapJob"

    if-nez p0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_0
    const-class v1, Landroid/app/job/JobScheduler;

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v1

    .line 55
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/server/notification/NotificationBitmapJobService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const v3, 0x114ee022

    invoke-direct {p0, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 60
    invoke-static {}, Lcom/android/server/notification/NotificationBitmapJobService;->getRunAfterMs()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-eq p0, v2, :cond_1

    .line 65
    const-string p0, "Failed to schedule bitmap removal job"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 69
    const-string v1, "Failed bitmap removal job"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/app/job/JobService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 1

    .line 101
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 102
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 103
    invoke-interface {v0}, Lcom/android/server/notification/NotificationManagerInternal;->removeBitmaps()V

    .line 107
    invoke-static {p0}, Lcom/android/server/notification/NotificationBitmapJobService;->scheduleJob(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationBitmapJobService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationBitmapJobService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
