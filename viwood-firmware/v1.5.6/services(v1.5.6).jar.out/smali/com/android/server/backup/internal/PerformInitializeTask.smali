.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBaseStateDir:Ljava/io/File;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mObserver:Landroid/app/backup/IBackupObserver;

.field public final mQueue:[Ljava/lang/String;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 7

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final notifyFinished(I)V
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :cond_0
    return-void
.end method

.method public final notifyResult(Ljava/lang/String;I)V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .line 111
    const-string v0, "BackupManagerService"

    const-string v1, "PerformInitializeTask.run()"

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_4

    :try_start_1
    aget-object v8, v4, v6

    .line 116
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v9, v8, v1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v9

    if-nez v9, :cond_0

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested init for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " but not found"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto/16 :goto_4

    .line 122
    :cond_0
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v10, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v9}, Lcom/android/server/backup/transport/TransportConnection;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 126
    invoke-virtual {v10, v11}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb05

    .line 128
    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 131
    invoke-virtual {v9, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v9

    .line 133
    invoke-virtual {v9}, Lcom/android/server/backup/transport/BackupTransportClient;->initializeDevice()I

    move-result v13

    if-eqz v13, :cond_1

    .line 135
    const-string v14, "Transport error in initializeDevice()"

    invoke-static {v0, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v13

    if-eqz v13, :cond_2

    .line 139
    const-string v14, "Transport error in finishBackup()"

    invoke-static {v0, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-nez v13, :cond_3

    .line 145
    const-string v9, "Device init successful"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v13, v11

    long-to-int v9, v13

    .line 147
    new-array v11, v3, [Ljava/lang/Object;

    const/16 v12, 0xb0b

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 148
    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v11, v12, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    iget-object v12, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v12, v11}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v9}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v11, 0xb09

    invoke-static {v11, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v9, v3, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v8, v3}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    goto :goto_2

    .line 156
    :cond_3
    const-string v11, "(initialize)"

    const/16 v12, 0xb06

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 157
    iget-object v11, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v8, v10}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v8, v13}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {v9}, Lcom/android/server/backup/transport/BackupTransportClient;->requestBackupTime()J

    move-result-wide v9

    .line 163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Init failed on "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " resched in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v7

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v11, v9

    iget-object v8, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 167
    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 164
    invoke-virtual {v7, v3, v11, v12, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v7, v13

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move v7, v13

    goto :goto_6

    :catch_1
    move-exception v4

    move v7, v13

    goto :goto_4

    .line 174
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {p0, v1}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    move v7, v3

    goto :goto_6

    :catch_2
    move-exception v4

    move v7, v3

    .line 171
    :goto_4
    :try_start_3
    const-string v5, "Unexpected error performing init"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v3, v0, :cond_6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/16 v0, -0x3e8

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {p0, v1}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    return-void

    .line 174
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_7
    if-ge v3, v4, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/backup/transport/TransportConnection;

    .line 175
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v5, v1}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    goto :goto_7

    .line 177
    :cond_7
    invoke-virtual {p0, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 178
    iget-object p0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {p0, v1}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 179
    throw v0
.end method
