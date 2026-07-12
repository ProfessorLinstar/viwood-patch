.class public Lcom/android/server/usage/UsageStatsHandlerThread;
.super Lcom/android/server/ServiceThread;
.source "UsageStatsHandlerThread.java"


# static fields
.field public static sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

.field public static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    const-string v2, "android.usagestats"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .locals 5

    .line 43
    sget-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/android/server/usage/UsageStatsHandlerThread;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsHandlerThread;-><init>()V

    sput-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    .line 48
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 49
    sget-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    .line 51
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    return-void
.end method

.method public static get()Lcom/android/server/usage/UsageStatsHandlerThread;
    .locals 2

    .line 59
    sget-object v0, Lcom/android/server/usage/UsageStatsHandlerThread;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/android/server/usage/UsageStatsHandlerThread;->ensureThreadLocked()V

    .line 61
    sget-object v1, Lcom/android/server/usage/UsageStatsHandlerThread;->sInstance:Lcom/android/server/usage/UsageStatsHandlerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
