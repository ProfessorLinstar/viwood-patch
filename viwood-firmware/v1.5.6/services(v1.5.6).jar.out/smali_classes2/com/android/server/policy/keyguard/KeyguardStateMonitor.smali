.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# instance fields
.field public final mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

.field public mCurrentUserId:I

.field public volatile mInputRestricted:Z

.field public volatile mIsShowing:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public volatile mSimSecure:Z

.field public volatile mTrusted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 56
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 58
    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    .line 61
    :try_start_0
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    const-string p1, "KeyguardStateMonitor"

    const-string p2, "Remote Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardStateMonitor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSimSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mInputRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mCurrentUserId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUser()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    return p0
.end method

.method public isInputRestricted()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return p0
.end method

.method public isSecure(I)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return p0
.end method

.method public isTrusted()Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    return p0
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return-void
.end method

.method public onShowingStateChanged(ZI)V
    .locals 1

    .line 89
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    if-eq p2, v0, :cond_0

    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 92
    const-class p2, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    .line 93
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p2, p1}, Lcom/android/server/ENotePopWindowManagerService$ENotePopWindowManagerServiceInternal;->onKeyguardShowing(Z)V

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onShowingChanged()V

    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    return-void
.end method

.method public onTrustedChanged(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mTrusted:Z

    .line 117
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCallback:Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    invoke-interface {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;->onTrustedChanged()V

    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .locals 0

    monitor-enter p0

    .line 106
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
