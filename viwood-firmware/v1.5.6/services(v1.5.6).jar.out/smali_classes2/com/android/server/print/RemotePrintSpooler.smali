.class public final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# static fields
.field public static final BIND_SPOOLER_SERVICE_TIMEOUT:J


# instance fields
.field public final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field public mCanUnbind:Z

.field public final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field public final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field public final mContext:Landroid/content/Context;

.field public final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field public mDestroyed:Z

.field public final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field public final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field public final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field public final mIntent:Landroid/content/Intent;

.field public mIsBinding:Z

.field public mIsLowPriority:Z

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/print/IPrintSpooler;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field public final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRemoteInstance(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAllPrintJobsHandled(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPrintJobStateChanged(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetClientLocked(Lcom/android/server/print/RemotePrintSpooler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    :goto_0
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    .line 81
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    .line 83
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 85
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 87
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    .line 90
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    .line 93
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    .line 96
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler-IA;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 128
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 130
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    .line 131
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 132
    new-instance p1, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 133
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 134
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.android.printspooler"

    const-string p3, "com.android.printspooler.model.PrintSpoolerService"

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final bindLocked()V
    .locals 8

    .line 601
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    const/4 v1, 0x0

    .line 618
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const v2, 0x4000001

    .line 624
    :goto_1
    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 628
    :goto_2
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v4, :cond_3

    .line 639
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 631
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 632
    sget-wide v6, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    .line 636
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 634
    :cond_4
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Cannot get spooler!"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 642
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 643
    throw v0
.end method

.method public final clearClientLocked()V
    .locals 2

    .line 679
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 681
    const-string v0, "RemotePrintSpooler"

    const-string v1, "Error clearing print spooler client"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public clearCustomPrinterIconCache()V
    .locals 4

    .line 429
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 430
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 432
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 435
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 437
    :try_start_3
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error clearing custom printer icon cache."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 444
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 444
    :goto_0
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 446
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 447
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 448
    throw v1

    :catchall_3
    move-exception p0

    .line 447
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 433
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final destroy()V
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 551
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 553
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    const/4 v1, 0x0

    .line 555
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 556
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 6

    .line 560
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_0
    const-string v1, "is_destroyed"

    iget-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 562
    const-string v1, "is_bound"

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide v4, 0x10800000002L

    invoke-virtual {p1, v1, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object p0

    invoke-interface {p0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "--proto"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    const-wide v1, 0x10b00000003L

    .line 567
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;J[B)V

    return-void

    .line 570
    :cond_1
    const-string v0, "internal_state"

    .line 571
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object p0

    invoke-interface {p0}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/String;

    .line 570
    invoke-static {p0, v1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->writeNested(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 574
    const-string p1, "RemotePrintSpooler"

    const-string v0, "Failed to dump remote instance"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception p0

    .line 563
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 403
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 405
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 406
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error getting custom printer icon."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 418
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 419
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 420
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 421
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 422
    throw p1

    :catchall_3
    move-exception p0

    .line 421
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 406
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 233
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 235
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 236
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 238
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 241
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error getting print job info."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 247
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 246
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 248
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 250
    throw p1

    :catchall_3
    move-exception p0

    .line 249
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 236
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 165
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 170
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 173
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error getting print jobs."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 178
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 179
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 180
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 182
    throw p1

    :catchall_3
    move-exception p0

    .line 181
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 168
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_0

    .line 592
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    .line 595
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    monitor-exit v0

    return-object p0

    .line 596
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public increasePriority()V
    .locals 3

    .line 139
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 142
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 145
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 149
    :catch_0
    :try_start_2
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 158
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public final onAllPrintJobsHandled()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    .line 582
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 3

    .line 370
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 371
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 373
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 376
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 379
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error loading new custom printer icon."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 386
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 385
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 386
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 387
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 389
    throw p1

    :catchall_3
    move-exception p0

    .line 388
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 374
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 504
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 506
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 509
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 511
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error pruning approved print services."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 517
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 518
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 519
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 520
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 521
    throw p1

    :catchall_3
    move-exception p0

    .line 520
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 507
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final removeObsoletePrintJobs()V
    .locals 4

    .line 525
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 526
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 528
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 531
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 533
    :try_start_3
    const-string v2, "RemotePrintSpooler"

    const-string v3, "Error removing obsolete print jobs ."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 539
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 539
    :goto_0
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 540
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 541
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 542
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 543
    throw v1

    :catchall_3
    move-exception p0

    .line 542
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 529
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setClientLocked()V
    .locals 2

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v0, p0}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 673
    const-string v0, "RemotePrintSpooler"

    const-string v1, "Error setting print spooler client"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .locals 2

    .line 475
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 476
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 478
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 481
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 484
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting print job cancelling."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 490
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 491
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 490
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 491
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 492
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 494
    throw p1

    :catchall_3
    move-exception p0

    .line 493
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 479
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 4

    .line 255
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 256
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 258
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 261
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting print job state."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 270
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p1

    return v1

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 269
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 271
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 273
    throw p1

    :catchall_3
    move-exception p0

    .line 272
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 259
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 4

    .line 452
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 453
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 455
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 458
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 466
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v2, "Error setting print job tag."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 467
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p1

    return v1

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 466
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 467
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 468
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 469
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 470
    throw p1

    :catchall_3
    move-exception p0

    .line 469
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 456
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 286
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 291
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 293
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting progress."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 299
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 298
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 299
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 300
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 302
    throw p1

    :catchall_3
    move-exception p0

    .line 301
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 289
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 342
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 344
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 347
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting status."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 354
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 355
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 354
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 355
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 356
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 358
    throw p1

    :catchall_3
    move-exception p0

    .line 357
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 345
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 313
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 315
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 318
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting status."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 326
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 325
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 326
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 327
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 329
    throw p1

    :catchall_3
    move-exception p0

    .line 328
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 316
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final throwIfCalledOnMainThread()V
    .locals 1

    .line 693
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eq v0, p0, :cond_0

    return-void

    .line 694
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot invoke on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .locals 1

    .line 687
    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-nez p0, :cond_0

    return-void

    .line 688
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot interact with a destroyed instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unbindLocked()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v0, :cond_0

    return-void

    .line 651
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 657
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    .line 661
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 209
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 211
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 216
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    const-string v2, "Error writing print job data."

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 225
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 223
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 225
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 226
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 228
    throw p2

    :catchall_3
    move-exception p0

    .line 227
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 212
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method
