.class public final Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "NonRequiredPackageDeleteObserver.java"


# instance fields
.field public mFailed:Z

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public awaitPackagesDeletion()Z
    .locals 6

    .line 53
    const-string v0, "DevicePolicyManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    if-nez v2, :cond_0

    .line 55
    const-string v2, "All non-required system apps with launcher icon, and all disallowed apps have been uninstalled."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 60
    :cond_1
    const-string p0, "Waiting time elapsed before all package deletion finished"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 64
    :goto_1
    const-string v2, "Interrupted while waiting for package deletion"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return v1
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mFailed:Z

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/NonRequiredPackageDeleteObserver;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
