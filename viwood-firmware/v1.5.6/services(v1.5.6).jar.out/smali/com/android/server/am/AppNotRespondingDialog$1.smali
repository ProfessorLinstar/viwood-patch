.class public Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 144
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x13d

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 147
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 157
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 159
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 160
    invoke-virtual {p1, v1, v5, v6, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 165
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 169
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 170
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 171
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 172
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->isContinuousAnr:Z

    if-eqz p1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ActivityManagerInternal;->rescheduleAnrDialog(Ljava/lang/Object;)V

    .line 176
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 170
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 176
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :goto_2
    if-eqz v2, :cond_4

    .line 182
    :try_start_5
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 184
    const-string v0, "AppNotRespondingDialog"

    const-string v1, "bug report receiver dissappeared"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
