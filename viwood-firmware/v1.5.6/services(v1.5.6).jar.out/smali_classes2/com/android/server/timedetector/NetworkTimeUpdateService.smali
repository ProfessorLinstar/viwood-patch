.class public Lcom/android/server/timedetector/NetworkTimeUpdateService;
.super Landroid/os/Binder;
.source "NetworkTimeUpdateService.java"


# instance fields
.field public final mCM:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetwork:Landroid/net/Network;

.field public final mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mNtpTrustedTime:Landroid/util/NtpTrustedTime;

.field public final mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->onPollNetworkTime(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 90
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    .line 91
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NetworkTimeUpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 95
    new-instance v4, Lcom/android/server/timedetector/NetworkTimeUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/timedetector/NetworkTimeUpdateService$$ExternalSyntheticLambda0;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 102
    new-instance v3, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/timedetector/NetworkTimeUpdateService$EngineImpl;-><init>(Ljava/util/function/Supplier;IIILandroid/util/NtpTrustedTime;)V

    iput-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

    .line 105
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 106
    const-class v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 107
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 108
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Lcom/android/server/timedetector/TimeDetectorInternal;)V

    iput-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;

    .line 129
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 131
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "NetworkTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 283
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDefaultNetwork="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

    invoke-interface {p0, p2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;->dump(Ljava/io/PrintWriter;)V

    .line 286
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_0
    move-exception p0

    .line 284
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public forceRefreshForTests()Z
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "force network time refresh"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 185
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_0

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    .line 188
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;

    invoke-interface {v2, v3, p0}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;->forceRefreshForTests(Landroid/net/Network;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 185
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw p0
.end method

.method public final onPollNetworkTime(Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mEngine:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;

    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mRefreshCallbacks:Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine;->refreshAndRescheduleIfRequired(Landroid/net/Network;Ljava/lang/String;Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    throw p1

    :catchall_1
    move-exception p0

    .line 198
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 292
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/NetworkTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "set NTP server config for tests"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, p1}, Landroid/util/NtpTrustedTime;->setServerConfigForTests(Landroid/util/NtpTrustedTime$NtpConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw p0
.end method

.method public systemRunning()V
    .locals 4

    .line 137
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$NetworkConnectivityCallback;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/timedetector/NetworkTimeUpdateService-IA;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;

    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$AutoTimeSettingObserver;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/os/Handler;Landroid/content/Context;)V

    .line 144
    const-string p0, "auto_time"

    invoke-static {p0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
