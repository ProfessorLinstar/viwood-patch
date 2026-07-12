.class public Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;
.super Ljava/lang/Object;
.source "InstallDependencyHelper.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mCallback:Landroid/os/OutcomeReceiver;

.field public mCalled:Z

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$JKIEhxY3I6krJ8c-hvvA1canv4c(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->lambda$onError$1(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTuaETiNg7IebcFDIkwgeH9Gdn8(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->lambda$onResult$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    .line 271
    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    .line 272
    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onError$1(Lcom/android/server/pm/PackageManagerException;)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic lambda$onResult$0()V
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCallback:Landroid/os/OutcomeReceiver;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 2

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Lcom/android/server/pm/PackageManagerException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 264
    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onError(Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->mCalled:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 284
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
