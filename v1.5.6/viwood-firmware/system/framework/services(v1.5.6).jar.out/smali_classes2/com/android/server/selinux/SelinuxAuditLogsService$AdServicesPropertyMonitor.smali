.class public final Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 168
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 170
    const-string/jumbo v1, "selinux_audit_cap"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->-$$Nest$sfgetQUOTA_LIMITER()Lcom/android/server/selinux/QuotaLimiter;

    move-result-object v2

    const v3, 0xc350

    .line 172
    invoke-virtual {p1, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 171
    invoke-virtual {v2, v1}, Lcom/android/server/selinux/QuotaLimiter;->setMaxPermits(I)V

    .line 176
    :cond_0
    const-string/jumbo v1, "selinux_enable_audit_job"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 180
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForAllDomains()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->cancel()V

    return-void

    .line 182
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    return-void

    .line 186
    :cond_3
    const-string/jumbo p1, "selinux_audit_job_frequency_hours"

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$AdServicesPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    :cond_4
    return-void
.end method
