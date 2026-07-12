.class public Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# instance fields
.field public final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field public final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field public mCurrentUser:I

.field public mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field public final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 111
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 49
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    const-string v1, "WindowManager"

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 50
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .locals 2

    .line 125
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 126
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v1, p1, p0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p3

    .line 74
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {p0, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;II)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object p2

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {p0, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    const/4 p1, -0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final shouldKeyguardBeEnabled(I)Z
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method public updateKeyguardEnabled(I)V
    .locals 0

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final updateKeyguardEnabledLocked(I)V
    .locals 2

    .line 67
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 68
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    return-void
.end method

.method public final watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .locals 1

    .line 83
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 85
    instance-of p1, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz p1, :cond_1

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only apps can use the KeyguardLock API"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
