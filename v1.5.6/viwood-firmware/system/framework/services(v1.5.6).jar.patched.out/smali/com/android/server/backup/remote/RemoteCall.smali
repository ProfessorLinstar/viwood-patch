.class public Lcom/android/server/backup/remote/RemoteCall;
.super Ljava/lang/Object;
.source "RemoteCall.java"


# instance fields
.field public final mCallable:Lcom/android/server/backup/remote/RemoteCallable;

.field public final mFuture:Ljava/util/concurrent/CompletableFuture;

.field public final mTimeoutMs:J


# direct methods
.method public static synthetic $r8$lambda$XfWnqTsPNSo7AX_pDrZDH6qXb0U(Lcom/android/server/backup/remote/RemoteCall;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->timeOut()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    return-void
.end method

.method public constructor <init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    .line 88
    iput-wide p3, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    .line 89
    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->cancel()V

    :cond_0
    return-void
.end method

.method public static execute(Lcom/android/server/backup/remote/RemoteCallable;J)Lcom/android/server/backup/remote/RemoteResult;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/server/backup/remote/RemoteCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/backup/remote/RemoteCall;-><init>(Lcom/android/server/backup/remote/RemoteCallable;J)V

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call()Lcom/android/server/backup/remote/RemoteResult;
    .locals 4

    .line 116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t call call() on main thread"

    .line 115
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/server/backup/remote/RemoteCall;->timeOut()V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/backup/remote/RemoteCall$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/remote/RemoteCall;)V

    iget-wide v2, p0, Lcom/android/server/backup/remote/RemoteCall;->mTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    iget-object v0, p0, Lcom/android/server/backup/remote/RemoteCall;->mCallable:Lcom/android/server/backup/remote/RemoteCallable;

    new-instance v1, Lcom/android/server/backup/remote/FutureBackupCallback;

    iget-object v2, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1, v2}, Lcom/android/server/backup/remote/FutureBackupCallback;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v0, v1}, Lcom/android/server/backup/remote/RemoteCallable;->call(Ljava/lang/Object;)V

    .line 127
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 131
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Future unexpectedly completed with an exception"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :catch_1
    sget-object p0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final timeOut()V
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
