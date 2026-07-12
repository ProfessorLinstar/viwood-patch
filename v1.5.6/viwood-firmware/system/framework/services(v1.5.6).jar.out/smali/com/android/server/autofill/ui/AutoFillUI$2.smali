.class public Lcom/android/server/autofill/ui/AutoFillUI$2;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

.field public final synthetic val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .locals 8

    .line 381
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 382
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetCancelButtonClicked(Z)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    if-eqz p1, :cond_1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmContext(Lcom/android/server/autofill/ui/AutoFillUI;)Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p1

    goto :goto_0

    .line 390
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting negative action listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillUI"

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->cancelSave()V

    .line 395
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-static {p1, p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mdestroySaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 403
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->cancelSave()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 406
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetDialogDismissed(Z)V

    :cond_1
    return-void
.end method

.method public onSave()V
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 371
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/SaveEventLogger;->maybeSetSaveButtonClicked(Z)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 375
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->save()V

    .line 376
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$pendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-static {v0, p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mdestroySaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/PendingUi;Z)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$2;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
