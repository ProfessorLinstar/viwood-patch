.class public Lcom/android/server/am/AccessCheckDelegateHelper;
.super Ljava/lang/Object;
.source "AccessCheckDelegateHelper.java"


# instance fields
.field public mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

.field public final mActiveInstrumentation:Ljava/util/List;

.field public final mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field public final mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerGlobalLock;Ljava/util/List;Lcom/android/server/appop/AppOpsService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 48
    iput-object p2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 50
    iput-object p4, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-void
.end method


# virtual methods
.method public addOverridePermissionState(IILjava/lang/String;I)V
    .locals 5

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 152
    iget-object v3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 153
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveInstrumentation;

    .line 154
    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only one instrumentation to grant overrides is allowed at a time."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 171
    :cond_2
    :goto_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/AccessCheckDelegate;->addOverridePermissionState(IILjava/lang/String;I)V

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 159
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Root can only override permissions only if the owning app was instrumented from root."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 146
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearAllOverridePermissionStates(I)V
    .locals 2

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 235
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 240
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 241
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_1

    .line 245
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 242
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearAllOverridePermissionStates()V

    .line 250
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 253
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 232
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearOverridePermissionStates(II)V
    .locals 2

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 209
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 211
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 214
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 215
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_1

    .line 219
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 216
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 222
    :cond_2
    invoke-interface {v1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearOverridePermissionStates(I)V

    .line 224
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 227
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 206
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    if-nez p1, :cond_0

    .line 56
    new-instance p1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;

    invoke-direct {p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v0, p1}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 58
    iget-object p1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    invoke-interface {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setCheckPermissionDelegate(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    return-object p0
.end method

.method public getDelegatedShellPermissions()Ljava/util/List;
    .locals 2

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the shell can get delegated permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    if-nez p0, :cond_2

    .line 137
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 140
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/pm/permission/AccessCheckDelegate;->getDelegatedPermissionNames()Ljava/util/List;

    move-result-object p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object p0

    .line 141
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public onInstrumentationFinished(ILjava/lang/String;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 260
    invoke-interface {v1, p1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegatePackage(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 261
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeShellPermissionDelegate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 263
    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 264
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->clearAllOverridePermissionStates()V

    .line 266
    :cond_1
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 270
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final removeAccessCheckDelegateLPr()V
    .locals 2

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAccessCheckDelegate:Lcom/android/server/pm/permission/AccessCheckDelegate;

    .line 67
    iget-object v1, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpsService;->setCheckOpsDelegate(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mPermissionManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setCheckPermissionDelegate(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$CheckPermissionDelegate;)V

    return-void
.end method

.method public removeOverridePermissionState(IILjava/lang/String;)V
    .locals 2

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 183
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 188
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasOverriddenPermissions()Z

    move-result p0

    if-nez p0, :cond_1

    .line 193
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 190
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the granter of current overrides can remove them."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2
    invoke-interface {v1, p2, p3}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeOverridePermissionState(ILjava/lang/String;)V

    .line 198
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result p1

    if-nez p1, :cond_3

    .line 199
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 201
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 179
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only root can override permissions."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V
    .locals 6

    .line 73
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only the shell can delegate its permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 80
    invoke-interface {v2, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->isDelegateAndOwnerUid(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shell can delegate permissions only to one instrumentation at a time"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 84
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_6

    .line 86
    iget-object v3, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mActiveInstrumentation:Ljava/util/List;

    .line 87
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveInstrumentation;

    .line 88
    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_4
    iget-object v1, v3, Lcom/android/server/am/ActiveInstrumentation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    if-eqz v1, :cond_5

    .line 98
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1, v1, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate;->setShellPermissionDelegate(ILjava/lang/String;[Ljava/lang/String;)V

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 94
    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Shell can delegate its permissions only to an instrumentation started from the shell"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public stopDelegateShellPermissionIdentity()V
    .locals 3

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 108
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the shell can delegate its permissions"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AccessCheckDelegateHelper;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/AccessCheckDelegateHelper;->getAccessCheckDelegateLPr(Z)Lcom/android/server/pm/permission/AccessCheckDelegate;

    move-result-object v1

    if-nez v1, :cond_2

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 117
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasShellPermissionDelegate()Z

    move-result v2

    if-nez v2, :cond_3

    .line 118
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 121
    :cond_3
    :try_start_2
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->removeShellPermissionDelegate()V

    .line 123
    invoke-interface {v1}, Lcom/android/server/pm/permission/AccessCheckDelegate;->hasDelegateOrOverrides()Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/android/server/am/AccessCheckDelegateHelper;->removeAccessCheckDelegateLPr()V

    .line 126
    :cond_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
