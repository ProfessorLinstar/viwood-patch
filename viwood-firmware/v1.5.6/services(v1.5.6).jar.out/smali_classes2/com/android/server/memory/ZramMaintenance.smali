.class public Lcom/android/server/memory/ZramMaintenance;
.super Landroid/app/job/JobService;
.source "ZramMaintenance.java"


# static fields
.field public static final JOB_ID:I = 0x1660a518

.field public static final KEY_CHECK_STATUS:Ljava/lang/String; = "check_status"

.field public static final TAG:Ljava/lang/String;

.field public static final sZramMaintenance:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lcom/android/server/memory/ZramMaintenance;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/memory/ZramMaintenance;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/memory/ZramMaintenance;->sZramMaintenance:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 169
    const-string/jumbo v0, "mm"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getLongProperty(Ljava/lang/String;J)J
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mm."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 164
    const-string/jumbo v0, "mm"

    invoke-static {v0, p0, p1, p2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static scheduleZramMaintenance(Landroid/content/Context;Ljava/time/Duration;Z)V
    .locals 3

    .line 145
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_0

    .line 148
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 149
    const-string v1, "check_status"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    new-instance p2, Landroid/app/job/JobInfo$Builder;

    const v1, 0x1660a518

    sget-object v2, Lcom/android/server/memory/ZramMaintenance;->sZramMaintenance:Landroid/content/ComponentName;

    invoke-direct {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 151
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const-string/jumbo p2, "zram.maintenance.require_device_idle"

    const/4 v1, 0x1

    .line 153
    invoke-static {p2, v1}, Lcom/android/server/memory/ZramMaintenance;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result p2

    .line 152
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    const-string/jumbo p2, "zram.maintenance.require_battery_not_low"

    .line 156
    invoke-static {p2, v1}, Lcom/android/server/memory/ZramMaintenance;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result p2

    .line 155
    invoke-virtual {p1, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_0
    return-void
.end method

.method public static startJob(Landroid/content/Context;Landroid/app/job/JobParameters;Landroid/os/IMmd;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string v0, "check_status"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-interface {p2}, Landroid/os/IMmd;->isZramMaintenanceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object p2, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "zram maintenance is not supported"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    invoke-interface {p2}, Landroid/os/IMmd;->doZramMaintenanceAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :goto_0
    sget-object v0, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string v1, "Failed to binder call to mmd"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 127
    :cond_1
    sget-object p2, Lcom/android/server/memory/ZramMaintenance;->TAG:Ljava/lang/String;

    const-string v0, "binder not found"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_1
    const-string/jumbo p2, "zram.maintenance.periodic_delay_seconds"

    const-wide/16 v0, 0xe10

    invoke-static {p2, v0, v1}, Lcom/android/server/memory/ZramMaintenance;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p2

    .line 131
    invoke-static {p0, p2, p1}, Lcom/android/server/memory/ZramMaintenance;->scheduleZramMaintenance(Landroid/content/Context;Ljava/time/Duration;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 80
    new-instance v0, Lcom/android/server/memory/ZramMaintenance$1;

    const-string v1, "ZramMaintenance"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/memory/ZramMaintenance$1;-><init>(Lcom/android/server/memory/ZramMaintenance;Ljava/lang/String;Landroid/app/job/JobParameters;)V

    .line 91
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
