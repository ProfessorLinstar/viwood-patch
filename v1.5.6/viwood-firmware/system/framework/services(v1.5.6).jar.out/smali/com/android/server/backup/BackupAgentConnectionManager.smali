.class public Lcom/android/server/backup/BackupAgentConnectionManager;
.super Ljava/lang/Object;
.source "BackupAgentConnectionManager.java"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAgentConnectLock:Ljava/lang/Object;

.field public final mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

.field public mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public final mUserIdMsg:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SSE5nMYZnChmUtr7p3MsiQIx0L0(Lcom/android/server/backup/BackupAgentConnectionManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupAgentConnectionManager;->lambda$agentDisconnected$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/content/pm/PackageManager;Lcom/android/server/backup/UserBackupManagerService;I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 97
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 98
    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 99
    iput-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    iput-object p3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 101
    iput p4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[UserID:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    return-void
.end method

.method public static isBackupModeRestore(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 257
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Non-system process uid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->getCallingUid()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " claiming agent connected"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 262
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "agentConnected pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " agent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-nez v1, :cond_1

    .line 264
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "was not expecting connection"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, v1, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    const-string p2, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "got agent for unexpected package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupAgent:Landroid/app/IBackupAgent;

    .line 269
    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    .line 272
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 273
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 284
    const-string p1, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " claiming agent disconnected"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 289
    :cond_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "agentDisconnected: the backup agent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " died: cancel current operations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 296
    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    .line 302
    :cond_1
    new-instance v1, Lcom/android/server/backup/BackupAgentConnectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/BackupAgentConnectionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupAgentConnectionManager;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->getThreadForCancellation(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 320
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 130
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bindToAgentSynchronous for null app"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/backup/BackupAgentConnectionManager;->shouldUseRestrictedBackupModeForPackage(ILjava/lang/String;)Z

    move-result v8

    .line 137
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "binding to new agent before unbinding from old one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    iget-object v4, v4, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 141
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    invoke-direct {v0, p1, p2, v8, v1}, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;-><init>(Landroid/content/pm/ApplicationInfo;IZLcom/android/server/backup/BackupAgentConnectionManager-IA;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    move v5, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;IIIZ)Z

    move-result p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    .line 154
    :try_start_2
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bind request failed for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    goto :goto_3

    .line 157
    :cond_2
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "awaiting agent for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v3, 0x2710

    add-long/2addr p2, v3

    .line 161
    :goto_2
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    if-eqz v0, :cond_3

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v0, v3, p2

    if-gez v0, :cond_3

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 166
    :try_start_4
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    goto :goto_2

    .line 172
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-eqz p2, :cond_5

    .line 173
    iget-boolean p3, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    if-nez p3, :cond_4

    .line 174
    iget-object p0, p2, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupAgent:Landroid/app/IBackupAgent;

    monitor-exit v2

    return-object p0

    .line 177
    :cond_4
    const-string p2, "BackupManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Timeout waiting for agent "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    .line 181
    :cond_5
    iget-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 182
    monitor-exit v2

    return-object v1

    .line 183
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public clearNoRestrictedModePackages()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 350
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 351
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallingUid()I
    .locals 0

    .line 425
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public getThreadForCancellation(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 420
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "agent-disconnected"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method

.method public final synthetic lambda$agentDisconnected$0(Ljava/lang/String;)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->operationTokensForPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNoRestrictedModePackages(Ljava/util/Set;I)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 332
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 333
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 335
    iget-object p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 336
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 340
    :goto_0
    monitor-exit v0

    return-void

    .line 338
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "opType must be BACKUP or RESTORE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 340
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldKillAppOnUnbind(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 234
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    iget-boolean v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->inRestrictedMode:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    iget p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupMode:I

    invoke-static {p0}, Lcom/android/server/backup/BackupAgentConnectionManager;->isBackupModeRestore(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x10000

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public final shouldUseRestrictedBackupModeForPackage(ILjava/lang/String;)Z
    .locals 6

    .line 369
    const-string v0, "BackupManagerService"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.app.backup.PROPERTY_USE_RESTRICTED_BACKUP_MODE"

    iget v4, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p2, v5, v4}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0

    return p0

    .line 386
    :cond_1
    const-string v2, "android.app.backup.PROPERTY_USE_RESTRICTED_BACKUP_MODEmust be a boolean."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :catch_0
    iget v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserId:I

    .line 397
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-wide/32 v3, 0x16736606

    .line 396
    invoke-static {v3, v4, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    :cond_2
    if-ne p1, v3, :cond_3

    .line 403
    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mBackupNoRestrictedModePackages:Landroid/util/ArraySet;

    .line 404
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mRestoreNoRestrictedModePackages:Landroid/util/ArraySet;

    .line 406
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 407
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Transport requested no restricted mode for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v1
.end method

.method public unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 198
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "unbindAgent for null app"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    if-eqz p2, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupAgentConnectionManager;->shouldKillAppOnUnbind(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    const/4 p2, 0x0

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    if-nez v1, :cond_2

    .line 212
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbindAgent but no current connection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_2
    iget-object v1, v1, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbindAgent for unexpected package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    iget-object v3, v3, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 218
    iput-object v1, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mCurrentConnection:Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;

    :goto_1
    if-eqz p2, :cond_4

    .line 222
    const-string p2, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mUserIdMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Killing agent host process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/android/server/backup/BackupAgentConnectionManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object p2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {p0, p2, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :catch_0
    :cond_4
    :try_start_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
