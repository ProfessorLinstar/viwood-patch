.class public final Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;
.super Ljava/lang/Object;
.source "SelinuxAuditLogsService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;Lcom/android/server/selinux/SelinuxAuditLogsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;-><init>(Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "selinux_audit_job_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    invoke-static {}, Lcom/android/server/selinux/SelinuxAuditLogsService;->enabledForSdkSandbox()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->cancel()V

    return-void

    .line 213
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/selinux/SelinuxAuditLogsService$SecurityPropertyMonitor;->mScheduler:Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;

    invoke-virtual {p0}, Lcom/android/server/selinux/SelinuxAuditLogsService$LogsCollectorJobScheduler;->schedule()V

    :cond_2
    return-void
.end method
