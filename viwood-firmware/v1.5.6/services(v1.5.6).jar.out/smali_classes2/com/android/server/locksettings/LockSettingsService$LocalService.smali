.class public final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/internal/widget/LockSettingsInternal;
.source "LockSettingsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 3745
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 1

    .line 3765
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$maddEscrowToken(Lcom/android/server/locksettings/LockSettingsService;[BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public armRebootEscrow()I
    .locals 0

    .line 3844
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->armRebootEscrowIfNeeded()I

    move-result p0

    return p0
.end method

.method public clearRebootEscrow()Z
    .locals 2

    .line 3834
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3837
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->noLongerRequireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public createNewUser(II)V
    .locals 0

    .line 3754
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mcreateNewUser(Lcom/android/server/locksettings/LockSettingsService;II)V

    return-void
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 5

    .line 3802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3804
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misProfileWithUnifiedLock(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3809
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Querying password metrics for unified challenge profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 3812
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3815
    throw p0
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 0

    .line 3776
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$misEscrowTokenActive(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public onThirdPartyAppsStarted()V
    .locals 0

    .line 3749
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monThirdPartyAppsStarted(Lcom/android/server/locksettings/LockSettingsService;)V

    return-void
.end method

.method public prepareRebootEscrow()Z
    .locals 2

    .line 3820
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->prepareRebootEscrow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3823
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshStrongAuthTimeout(I)V
    .locals 0

    .line 3849
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmStrongAuth(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->refreshStrongAuthTimeout(I)V

    return-void
.end method

.method public registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
    .locals 0

    .line 3854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3855
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmLockSettingsStateListeners(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEscrowToken(JI)Z
    .locals 0

    .line 3771
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveEscrowToken(Lcom/android/server/locksettings/LockSettingsService;JI)Z

    move-result p0

    return p0
.end method

.method public removeUser(I)V
    .locals 0

    .line 3759
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mremoveUser(Lcom/android/server/locksettings/LockSettingsService;I)V

    return-void
.end method

.method public setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 6

    .line 3782
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3783
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3784
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation requires secure lock screen feature."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3787
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 3791
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$monPostPasswordChanged(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0

    .line 3829
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmRebootEscrowManager(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)Z
    .locals 0

    .line 3797
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$munlockUserWithToken(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z

    move-result p0

    return p0
.end method

.method public unregisterLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
    .locals 0

    .line 3861
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$fgetmLockSettingsStateListeners(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
