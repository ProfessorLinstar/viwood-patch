.class public Lcom/android/server/autofill/ui/AutoFillUI$3;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/DialogFillUi$UiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;

.field public final synthetic val$sessionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(I)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 523
    iget-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$log:Landroid/metrics/LogMaker;

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onCanceled()V
    .locals 3

    const/4 v0, 0x2

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 503
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 505
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetNegativeCtaButtonClicked(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 508
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 510
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 511
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestFallbackFromFillDialog()V

    return-void

    .line 508
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDatasetPicked(Landroid/service/autofill/Dataset;)V
    .locals 3

    const/4 v0, 0x4

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 473
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 475
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetPositiveCtaButtonClicked(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 478
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 480
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    const/4 v2, 0x3

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;I)V

    :cond_1
    return-void

    .line 478
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDismissed()V
    .locals 3

    const/4 v0, 0x5

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$presentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 492
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/PresentationStatsEventLogger;->maybeSetDialogDismissed(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 494
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 497
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestFallbackFromFillDialog()V

    return-void

    .line 494
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 6

    const/4 v0, 0x3

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI$3;->log(I)V

    .line 454
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    invoke-static {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$mhideFillDialogUiThread(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 455
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 458
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x3

    const v2, 0xffff

    .line 456
    invoke-interface/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public onShown(I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object p0

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->onShown(II)V

    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$3;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {p0}, Lcom/android/server/autofill/ui/AutoFillUI;->-$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    :cond_0
    return-void
.end method
