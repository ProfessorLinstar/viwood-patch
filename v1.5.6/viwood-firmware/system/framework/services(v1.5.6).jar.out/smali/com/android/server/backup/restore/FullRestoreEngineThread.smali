.class public Lcom/android/server/backup/restore/FullRestoreEngineThread;
.super Ljava/lang/Object;
.source "FullRestoreEngineThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field public mEngineStream:Ljava/io/InputStream;

.field public final mMustKillAgent:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 22
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {p1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/restore/FullRestoreEngine;Ljava/io/InputStream;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    .line 31
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    .line 33
    iput-boolean v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    return-void
.end method


# virtual methods
.method public handleTimeout()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 61
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->handleTimeout()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 47
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/RestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    iget-boolean v3, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mMustKillAgent:Z

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-boolean v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngineStream:Ljava/io/InputStream;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    throw v0
.end method

.method public waitForResult()I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngineThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {p0}, Lcom/android/server/backup/restore/RestoreEngine;->waitForResult()I

    move-result p0

    return p0
.end method
