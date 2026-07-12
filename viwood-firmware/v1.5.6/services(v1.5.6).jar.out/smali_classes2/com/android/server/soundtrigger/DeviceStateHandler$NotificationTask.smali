.class public Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;
.super Ljava/lang/Object;
.source "DeviceStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mCancelLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mRunnable:Ljava/lang/Runnable;

.field public final mWaitInMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    .line 207
    iput-object p1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Ljava/lang/Runnable;

    .line 208
    iput-wide p2, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mWaitInMillis:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mCancelLatch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mWaitInMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 227
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected InterruptedException"

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public runnableEquals(Ljava/lang/Runnable;)Z
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/server/soundtrigger/DeviceStateHandler$NotificationTask;->mRunnable:Ljava/lang/Runnable;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
