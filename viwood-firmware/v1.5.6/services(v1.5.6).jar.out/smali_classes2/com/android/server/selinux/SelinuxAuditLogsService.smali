.class public Lcom/android/server/selinux/SelinuxAuditLogsService;
.super Landroid/app/job/JobService;
.source "SelinuxAuditLogsService.java"


# static fields
.field public static final AUDITD_TAG_CODE:I

.field public static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

.field public static final LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

.field public static final QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

.field public static final RATE_LIMITER_WINDOW:Ljava/time/Duration;

.field public static final SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$AJuDyeqptjfWilIl-ByvSw45K1c(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService;->lambda$onStartJob$0(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetQUOTA_LIMITER()Lcom/android/server/selinux/QuotaLimiter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetSELINUX_AUDIT_JOB_COMPONENT()Landroid/content/ComponentName;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 47
    const-string v0, "auditd"

    invoke-static {v0}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/selinux/SelinuxAuditLogsService;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->SELINUX_AUDIT_JOB_COMPONENT:Landroid/content/ComponentName;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0xa

    .line 69
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->RATE_LIMITER_WINDOW:Ljava/time/Duration;

    .line 70
    new-instance v1, Lcom/android/server/selinux/QuotaLimiter;

    const-string/jumbo v2, "selinux_audit_cap"

    const v3, 0xc350

    .line 72
    const-string v4, "adservices"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/selinux/QuotaLimiter;-><init>(I)V

    sput-object v1, Lcom/android/server/selinux/SelinuxAuditLogsService;->QUOTA_LIMITER:Lcom/android/server/selinux/QuotaLimiter;

    .line 76
    new-instance v2, Lcom/android/server/selinux/SelinuxAuditLogsJob;

    new-instance v3, Lcom/android/server/selinux/SelinuxAuditLogsCollector;

    new-instance v4, Lcom/android/server/selinux/RateLimiter;

    invoke-direct {v4, v0}, Lcom/android/server/selinux/RateLimiter;-><init>(Ljava/time/Duration;)V

    invoke-direct {v3, v4, v1}, Lcom/android/server/selinux/SelinuxAuditLogsCollector;-><init>(Lcom/android/server/selinux/RateLimiter;Lcom/android/server/selinux/QuotaLimiter;)V

    invoke-direct {v2, v3}, Lcom/android/server/selinux/SelinuxAuditLogsJob;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsCollector;)V

    sput-object v2, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static final enabledForAllDomains()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static final enabledForSdkSandbox()Z
    .locals 3

    .line 150
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "adservices"

    const-string/jumbo v2, "selinux_enable_audit_job"

    invoke-static {v0, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    const-string v1, "SelinuxAuditLogs"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string p0, "SelinuxAuditLogsService not enabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    sget v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->AUDITD_TAG_CODE:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 89
    const-string p0, "auditd is not a registered tag on this system"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_1
    new-instance v0, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    const-class v1, Landroid/app/job/JobScheduler;

    .line 95
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const-string v2, "SelinuxAuditLogsNamespace"

    .line 96
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;-><init>(Landroid/app/job/JobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V

    .line 97
    invoke-virtual {v0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    .line 99
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;

    invoke-direct {v1, v0, v2}, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V

    .line 100
    const-string v3, "adservices"

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 100
    invoke-static {v3, v4, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 103
    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;

    invoke-direct {v1, v0, v2}, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V

    .line 104
    const-string/jumbo v0, "security"

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 104
    invoke-static {v0, p0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onStartJob$0(Landroid/app/job/JobParameters;)V
    .locals 1

    .line 120
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsJob;->start(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 111
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v0

    const v1, 0x182771a

    const/4 v2, 0x0

    const-string v3, "SelinuxAuditLogs"

    if-eq v0, v1, :cond_0

    .line 112
    const-string p0, "The job id does not match the expected selinux job id."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->selinuxSdkSandboxAudit()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string p0, "Selinux audit job disabled."

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 120
    :cond_1
    sget-object v0, Lcom/android/server/selinux/SelinuxAuditLogsService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService;Landroid/app/job/JobParameters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 126
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    const p1, 0x182771a

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    return v0

    .line 130
    :cond_0
    sget-object p0, Lcom/android/server/selinux/SelinuxAuditLogsService;->LOGS_COLLECTOR_JOB:Lcom/android/server/selinux/SelinuxAuditLogsJob;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsJob;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsJob;->requestStop()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
