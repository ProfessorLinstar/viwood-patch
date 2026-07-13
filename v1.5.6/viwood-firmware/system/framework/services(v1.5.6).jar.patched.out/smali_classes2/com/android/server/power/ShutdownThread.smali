.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field static final DEFAULT_SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field public static METRIC_AM:Ljava/lang/String; = null

.field public static METRIC_PM:Ljava/lang/String; = null

.field public static METRIC_RADIO:Ljava/lang/String; = null

.field public static METRIC_RADIOS:Ljava/lang/String; = null

.field public static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field public static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field public static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field public static final TRON_METRICS:Landroid/util/ArrayMap;

.field public static mReason:Ljava/lang/String; = null

.field public static mReboot:Z = false

.field public static mRebootHasProgressBar:Z = false

.field public static mRebootSafeMode:Z = false

.field public static sConfirmDialog:Landroid/app/AlertDialog; = null

.field public static final sInstance:Lcom/android/server/power/ShutdownThread;

.field public static sIsStarted:Z = false

.field public static final sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field public mActionDone:Z

.field public final mActionDoneSync:Ljava/lang/Object;

.field public mContext:Landroid/content/Context;

.field public mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/power/ShutdownThread$Injector;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mProgressDialog:Landroid/app/ProgressDialog;

.field public mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/ShutdownThread;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetRebootProgress(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetMETRIC_RADIO()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTRON_METRICS()Landroid/util/ArrayMap;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmRebootHasProgressBar()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smbeginEinkShutdownSequence(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginEinkShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smbeginShutdownSequence(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmetricEnded(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smmetricStarted(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnewTimingsLog()Landroid/util/TimingsTraceLog;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smwaitRefreshFinish()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->waitRefreshFinish()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 125
    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 131
    const-string v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    new-instance v0, Lcom/android/server/power/ShutdownThread$Injector;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownThread;-><init>(Lcom/android/server/power/ShutdownThread$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownThread$Injector;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 152
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    return-void
.end method

.method public static beginEinkShutdownSequence(Landroid/content/Context;)V
    .locals 6

    .line 451
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "service.bootanim.exit"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const-string/jumbo v5, "shutdown_wakeup"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 454
    const-string v1, "com.vivoods.shutdown"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->callEinkBeginSleep()Z

    .line 458
    :try_start_0
    const-string v1, "ENotePopWindowManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/enote/IENotePopWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/enote/IENotePopWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginEinkShutdownSequence showShutdownPopupWindow mReboot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-interface {v1}, Landroid/os/enote/IENotePopWindowManager;->showShutdownPopupWindow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginEinkShutdownSequence showShutdownPopupWindow catch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static beginShutdownSequence(Landroid/content/Context;)V
    .locals 5

    .line 478
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 483
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 485
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 490
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    .line 493
    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    .line 495
    :try_start_1
    const-string v4, "ShutdownThread-cpu"

    invoke-virtual {p0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    invoke-virtual {p0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 498
    iget-object p0, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 500
    const-string v0, "ShutdownThread"

    const-string v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    :goto_0
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 506
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    :try_start_2
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "ShutdownThread-screen"

    const/16 v4, 0x1a

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 510
    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 511
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 513
    const-string v0, "ShutdownThread"

    const-string v1, "No permission to acquire wake lock"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 518
    :cond_1
    :goto_1
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x3345a

    .line 519
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 523
    :cond_2
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v0, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 525
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 486
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static callEinkBeginSleep()Z
    .locals 6

    .line 402
    const-string v0, "callEinkBeginSleep start"

    const-string v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "EinkMessageHandler"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 408
    :try_start_0
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 409
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callEinkBeginSleep ret:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static createDefaultVibrationEffect()Landroid/os/VibrationEffect;
    .locals 3

    const-wide/16 v0, 0x1f4

    const/4 v2, -0x1

    .line 987
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static metricEnded(Ljava/lang/String;)V
    .locals 5

    .line 703
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 705
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static metricShutdownStart()V
    .locals 4

    .line 710
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 711
    :try_start_0
    sget-object v1, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static metricStarted(Ljava/lang/String;)V
    .locals 5

    .line 697
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 698
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static newTimingsLog()Landroid/util/TimingsTraceLog;
    .locals 4

    .line 693
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static parseVibrationEffectFromFile(Ljava/lang/String;Landroid/os/Vibrator;)Landroid/os/VibrationEffect;
    .locals 1

    .line 976
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/vibrator/persistence/ParsedVibration;->resolve(Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 980
    const-string p1, "ShutdownThread"

    const-string v0, "Error parsing default shutdown vibration effect."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 262
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    .line 263
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 264
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 265
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 266
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    .line 801
    const-string v0, "ShutdownThread"

    if-eqz p1, :cond_0

    .line 802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Rebooting, reason: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 804
    const-string p0, "Reboot failed, will attempt shutdown instead"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 809
    :try_start_0
    sget-object p1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {p1, p0}, Lcom/android/server/power/ShutdownThread;->playShutdownVibration(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 812
    const-string p1, "Failed to vibrate during shutdown."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    :cond_1
    :goto_0
    const-string p0, "Performing low-level shutdown..."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 2

    .line 278
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 279
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 284
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x0

    .line 285
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    const/4 v0, 0x0

    .line 286
    sput-object v0, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 287
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static saveMetrics(ZLjava/lang/String;)V
    .locals 9

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    const-string/jumbo v1, "reboot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    .line 854
    const-string/jumbo p0, "y"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "n"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "reason:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    sget-object p0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    const/4 p1, 0x0

    move v1, p1

    .line 857
    :goto_1
    const-string v2, "ShutdownThread"

    if-ge v1, p0, :cond_2

    .line 858
    sget-object v3, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 859
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "metricEnded wasn\'t called for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/16 v2, 0x2c

    .line 864
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 866
    :cond_2
    new-instance p0, Ljava/io/File;

    const-string v1, "/data/system/shutdown-metrics.tmp"

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 871
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 868
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 872
    :goto_4
    const-string v1, "Cannot save shutdown metrics"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-eqz p1, :cond_3

    .line 875
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/system/shutdown-metrics.txt"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 167
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 168
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 169
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    return-void
.end method

.method public static shutdownInner(Landroid/content/Context;Z)V
    .locals 4

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 179
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 186
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPoint(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 194
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_1

    const v1, 0x1040901

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const v1, 0x10409d0

    goto :goto_0

    :cond_2
    const v1, 0x10409cf

    :goto_0
    if-eqz p1, :cond_5

    .line 205
    new-instance p1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 206
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_4

    const v3, 0x1040902

    goto :goto_1

    :cond_4
    const v3, 0x10408dd

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    const p0, 0x1040013

    .line 214
    invoke-virtual {v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x1040009

    .line 219
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 220
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 221
    iput-object p0, p1, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 222
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 223
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d9

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 224
    sget-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 226
    :cond_5
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginEinkShutdownSequence(Landroid/content/Context;)V

    return-void

    .line 186
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static waitRefreshFinish()Z
    .locals 9

    .line 377
    const-string/jumbo v0, "waitRefreshFinish start"

    const-string v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v0, "EinkMessageHandler"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x32

    if-ge v5, v7, :cond_1

    const/4 v7, 0x1

    .line 384
    :try_start_0
    invoke-interface {v0, v7, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 385
    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    const-wide/16 v7, 0x64

    .line 386
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 388
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 395
    :cond_1
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitRefreshFinish ret:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method


# virtual methods
.method public actionDone()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 530
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 531
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getValidShutdownVibration(Landroid/content/Context;Landroid/os/Vibrator;)Landroid/os/VibrationEffect;
    .locals 2

    .line 954
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownThread$Injector;->getDefaultShutdownVibrationEffectFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 954
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->parseVibrationEffectFromFile(Ljava/lang/String;Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object p0

    if-nez p0, :cond_0

    .line 959
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->createDefaultVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 962
    :cond_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 967
    const-string p0, "ShutdownThread"

    const-string p1, "The parsed shutdown vibration is indefinite."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->createDefaultVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public playShutdownVibration(Landroid/content/Context;)V
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ShutdownThread$Injector;->isShutdownVibrationDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const-string p0, "ShutdownThread"

    const-string p1, "Vibration disabled in config"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ShutdownThread$Injector;->getVibrator(Landroid/content/Context;)Landroid/os/Vibrator;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 838
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->getValidShutdownVibration(Landroid/content/Context;Landroid/os/Vibrator;)Landroid/os/VibrationEffect;

    move-result-object p1

    const/16 v1, 0x12

    .line 841
    invoke-static {v1}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 839
    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 844
    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 848
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread;->mInjector:Lcom/android/server/power/ShutdownThread$Injector;

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const-wide/16 v0, 0x1f4

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/ShutdownThread$Injector;->sleep(J)V

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 540
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v2

    .line 541
    const-string v0, "SystemServerShutdown"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 543
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 547
    invoke-static {}, Landroid/view/SurfaceControl;->notifyShutdown()V

    .line 550
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/shutdown-checkpoints/checkpoints"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/power/ShutdownCheckPoints;->newDumpThread(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object v3

    .line 552
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, ""

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    const-string/jumbo v4, "sys.shutdown.requested"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_2

    .line 569
    const-string/jumbo v0, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_2
    const-string v0, "DumpPreRebootInfo"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 574
    :try_start_0
    const-string v0, "ShutdownThread"

    const-string v4, "Logging pre-reboot information..."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/PreRebootLogger;->log(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 577
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to log pre-reboot information"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    :goto_2
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 581
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 582
    const-string v0, "SendShutdownBroadcast"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 583
    const-string v0, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 586
    iput-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 587
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x50000000

    .line 588
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v12, 0x2

    .line 590
    invoke-virtual {v0, v12}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    .line 592
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 594
    new-instance v6, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v6, v1}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    .line 603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    .line 604
    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v8

    .line 605
    :catch_1
    :goto_3
    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v9, 0x0

    if-nez v0, :cond_5

    .line 606
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/16 v13, 0x0

    cmp-long v0, v10, v13

    if-gtz v0, :cond_3

    .line 608
    const-string v0, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 610
    :cond_3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_4

    sub-long v13, v6, v10

    long-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    const-wide v15, 0x40c3880000000000L    # 10000.0

    div-double/2addr v13, v15

    double-to-int v0, v13

    .line 613
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v13, v0, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v13, 0x1f4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 620
    :cond_5
    :goto_4
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 621
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_6

    .line 622
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0, v12, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 624
    :cond_6
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 625
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 627
    const-string v0, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v0, "ShutdownActivityManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 629
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 631
    const-string v0, "activity"

    .line 632
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v4, 0x2710

    .line 635
    :try_start_4
    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 639
    :catch_2
    :cond_7
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_8

    .line 640
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 642
    :cond_8
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 643
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 645
    const-string v0, "ShutdownThread"

    const-string v4, "Shutting down package manager..."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v0, "ShutdownPackageManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 647
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 649
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_9

    .line 651
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->shutdown()V

    .line 653
    :cond_9
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_a

    .line 654
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 656
    :cond_a
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 657
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 660
    const-string v0, "ShutdownRadios"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    const/16 v0, 0x2ee0

    .line 662
    invoke-virtual {v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 663
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_b

    .line 664
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    invoke-virtual {v0, v4, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 666
    :cond_b
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 667
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 669
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_c

    .line 670
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 674
    invoke-virtual {v1}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 678
    :cond_c
    const-string v0, "ShutdownCheckPointsDumpWait"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 680
    :try_start_5
    invoke-virtual {v3, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 683
    :catch_3
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 685
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 686
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 687
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    .line 689
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    return-void

    .line 620
    :goto_5
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final shutdownRadios(I)V
    .locals 10

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long v6, v0, v2

    const/4 v0, 0x1

    .line 733
    new-array v9, v0, [Z

    .line 734
    new-instance v4, Lcom/android/server/power/ShutdownThread$6;

    move-object v5, p0

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 782
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 784
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    .line 787
    aget-boolean p0, v9, p0

    if-nez p0, :cond_0

    .line 788
    const-string p0, "ShutdownThread"

    const-string p1, "Timed out waiting for Radio shutdown."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final uncrypt()V
    .locals 7

    .line 880
    const-string v0, "Calling uncrypt and monitoring the progress..."

    const-string v1, "ShutdownThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v0, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 904
    new-array v3, v3, [Z

    aput-boolean v2, v3, v2

    .line 905
    new-instance v4, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 920
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-wide/32 v5, 0xdbba0

    .line 923
    :try_start_0
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :catch_0
    aget-boolean p0, v3, v2

    if-nez p0, :cond_0

    .line 927
    const-string p0, "Timed out waiting for uncrypt."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x384

    .line 930
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 929
    const-string/jumbo v0, "uncrypt_time: %d\nuncrypt_error: %d\n"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 932
    :try_start_1
    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v0, p0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 934
    const-string v0, "Failed to write timeout message to uncrypt status"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
