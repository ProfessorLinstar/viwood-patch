.class public final Lcom/android/server/am/ApplicationThreadDeferred;
.super Landroid/app/IApplicationThread$Delegator;
.source "ApplicationThreadDeferred.java"


# instance fields
.field public final mBase:Landroid/app/IApplicationThread;

.field public final mDefer:Z

.field public final mLock:Ljava/lang/Object;

.field public final mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

.field public mPaused:Z

.field public final mPending:[Z


# direct methods
.method public static synthetic $r8$lambda$EyFIl9oQearTD0bqYtkIdp-2aEw(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$PP7wSw0gGLmO6hi1tOkPocTG8v8(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_AjVZez4200DRB8oUj9lSUVdMXo(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pzCGrkeFAdnodnDYXv9us5vUB_A(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/android/server/am/ApplicationThreadDeferred;->deferBindersWhenPaused()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ApplicationThreadDeferred;-><init>(Landroid/app/IApplicationThread;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;Z)V
    .locals 3

    .line 96
    invoke-direct {p0, p1}, Landroid/app/IApplicationThread$Delegator;-><init>(Landroid/app/IApplicationThread;)V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    const/4 v1, 0x4

    .line 80
    new-array v2, v1, [Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    iput-object v2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    .line 84
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    .line 98
    iput-object p1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    .line 99
    iput-boolean p2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mDefer:Z

    .line 101
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    aput-object p1, v2, v0

    .line 102
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 103
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 p2, 0x2

    aput-object p1, v2, p2

    .line 104
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 p0, 0x3

    aput-object p1, v2, p0

    return-void
.end method

.method public static deferBindersWhenPaused()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public clearDnsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public final execute(I)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mDefer:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    const/4 v1, 0x1

    aput-boolean v1, p0, p1

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 162
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V

    return-void

    .line 162
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->clearDnsCache()V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateTimeZone()V

    return-void
.end method

.method public final synthetic lambda$new$2()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->scheduleLowMemory()V

    return-void
.end method

.method public final synthetic lambda$new$3()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateHttpProxy()V

    return-void
.end method

.method public onProcessPaused()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 124
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onProcessPausedCancelled()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    return-void
.end method

.method public onProcessUnpaused()V
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 131
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v2, v1

    .line 133
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    .line 135
    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 143
    throw v2

    .line 142
    :catch_0
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 144
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public scheduleLowMemory()V
    .locals 1

    const/4 v0, 0x2

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public updateHttpProxy()V
    .locals 1

    const/4 v0, 0x3

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method
