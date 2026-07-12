.class public Lcom/android/server/autofill/Session$1;
.super Landroid/content/BroadcastReceiver;
.source "Session.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 554
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.service.autofill.action.DELAYED_FILL"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 555
    const-string p0, "AutofillSession"

    const-string p1, "Unexpected action is received."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 558
    :cond_0
    const-string p1, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 559
    const-string p0, "AutofillSession"

    const-string p1, "Delay fill action is missing request id extra."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 562
    :cond_1
    const-string p1, "AutofillSession"

    const-string/jumbo v0, "mDelayedFillBroadcastReceiver delayed fill action received"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 564
    :try_start_0
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 565
    const-string v1, "android.service.autofill.extra.FILL_RESPONSE"

    const-class v2, Landroid/service/autofill/FillResponse;

    .line 566
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/autofill/FillResponse;

    .line 569
    iget-object v1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmFillRequestEventLogger(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/FillRequestEventLogger;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/FillRequestEventLogger;->maybeSetRequestTriggerReason(I)V

    .line 571
    iget-object p0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmAssistReceiver(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->processDelayedFillLocked(ILandroid/service/autofill/FillResponse;)V

    .line 572
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
