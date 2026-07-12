.class public Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
.super Ljava/lang/Object;
.source "BackupManagerMonitorEventSender.java"


# instance fields
.field public final mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

.field public mMonitor:Landroid/app/backup/IBackupManagerMonitor;


# direct methods
.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 60
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-direct {p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 67
    iput-object p2, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    return-void
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    .line 233
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 235
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    .line 199
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 201
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    .line 182
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 184
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    .line 216
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 218
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method


# virtual methods
.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object p0
.end method

.method public monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string v1, "BackupManagerService"

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup manager monitor is null unable to send event"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 144
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 145
    invoke-interface {p2, v0}, Landroid/app/IBackupAgent;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    .line 146
    invoke-interface {p2, v2}, Landroid/app/IBackupAgent;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    .line 147
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 148
    invoke-virtual {v0, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 147
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->sendAgentLoggingResults(Landroid/content/pm/PackageInfo;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 154
    :goto_0
    const-string p1, "Failed to retrieve logging results from agent"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 152
    :goto_1
    const-string p1, "Timeout while waiting to retrieve logging results from agent"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    .locals 4

    .line 95
    const-string v0, "BackupManagerService"

    const-string v1, "android.app.backup.extra.OPERATION_TYPE"

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v3, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string p1, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 99
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object p3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    iget p3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string p1, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    .line 104
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p2

    .line 103
    invoke-virtual {v2, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    if-eqz p4, :cond_1

    .line 107
    invoke-virtual {v2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 110
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mBackupManagerMonitorDumpsysUtils:Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    .line 111
    invoke-virtual {p1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    if-eqz p1, :cond_2

    .line 116
    invoke-interface {p1, v2}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V

    return-void

    .line 118
    :cond_2
    const-string p1, "backup manager monitor is null unable to send event"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 122
    const-string p0, "backup manager monitor went away"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendAgentLoggingResults(Landroid/content/pm/PackageInfo;Ljava/util/List;I)V
    .locals 2

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    const-string v1, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 163
    const-string p2, "android.app.backup.extra.OPERATION_TYPE"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0x34

    const/4 p3, 0x2

    .line 164
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setMonitor(Landroid/app/backup/IBackupManagerMonitor;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method
