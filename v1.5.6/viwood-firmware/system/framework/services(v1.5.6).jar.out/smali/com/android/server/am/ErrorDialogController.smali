.class public final Lcom/android/server/am/ErrorDialogController;
.super Ljava/lang/Object;
.source "ErrorDialogController.java"


# instance fields
.field public mAnrController:Landroid/app/AnrController;

.field public mAnrDialogs:Ljava/util/List;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mCrashDialogs:Ljava/util/List;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mViolationDialogs:Ljava/util/List;

.field public mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method public static synthetic $r8$lambda$PGTeWgvsb4oQ3F3N9FtHOh5cjQA(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGlBSBYSScon6h9jcR60ItwHWYU(Lcom/android/server/am/ErrorDialogController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showCrashDialogs$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wG8Rs_jBa23FnPy-dZG8oQbwrMs(Lcom/android/server/am/ErrorDialogController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showDebugWaitingDialogs$2()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 264
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 265
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public clearAllErrorDialogs()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearWaitingDialog()V

    return-void
.end method

.method public clearAnrDialogs()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public clearCrashDialogs()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs(Z)V

    return-void
.end method

.method public clearCrashDialogs(Z)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 118
    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_1
    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-void
.end method

.method public clearViolationDialogs()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    return-void
.end method

.method public clearWaitingDialog()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    return-void
.end method

.method public forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 164
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnrController()Landroid/app/AnrController;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-object p0
.end method

.method public getAnrDialogs()Ljava/util/List;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object p0
.end method

.method public getCrashDialogs()Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object p0
.end method

.method public final getDisplayContexts(Z)Ljava/util/List;
    .locals 2

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 255
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz p1, :cond_3

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 257
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 255
    :goto_1
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasAnrDialogs()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasCrashDialogs()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasDebugWaitingDialog()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasViolationDialogs()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$showCrashDialogs$1()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v1, :cond_0

    .line 182
    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 180
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$showDebugWaitingDialogs$2()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz p0, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 221
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnrController(Landroid/app/AnrController;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 194
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .locals 6

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 174
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDebugWaitingDialogs()V
    .locals 4

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 215
    new-instance v1, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 217
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .locals 7

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 205
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
