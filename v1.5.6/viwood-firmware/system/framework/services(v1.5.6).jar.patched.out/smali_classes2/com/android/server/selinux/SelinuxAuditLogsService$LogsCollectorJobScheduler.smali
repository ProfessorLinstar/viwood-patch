.class public final Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsService.java"


# instance fields
.field public final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/job/JobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;-><init>(Landroid/app/job/JobScheduler;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 234
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    const v0, 0x182771a

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public schedule()V
    .locals 5

    .line 238
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "selinux_audit_job_frequency_hours"

    const/16 v2, 0x18

    .line 240
    const-string v3, "adservices"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 244
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->mJobScheduler:Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x182771a

    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->-$$Nest$sfgetSELINUX_AUDIT_JOB_COMPONENT()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 246
    invoke-virtual {v2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const-string v0, "SelinuxAuditLogs"

    if-nez p0, :cond_0

    .line 251
    const-string p0, "SelinuxAuditLogsService could not be scheduled."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_0
    const-string p0, "SelinuxAuditLogsService scheduled successfully."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
