.class public final Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;
.super Lcom/android/server/timezonedetector/location/ThreadingDomain;
.source "HandlerThreadingDomain.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$RNWujQtOBdem2p3TK6tQfd-x4_E(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 75
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    :try_start_1
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 80
    throw p0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertNotCurrentThread()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 72
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 73
    new-instance v3, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->post(Ljava/lang/Runnable;)V

    .line 84
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    throw p0

    .line 85
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Timed out"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public removeQueuedRunnables(Ljava/lang/Object;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
