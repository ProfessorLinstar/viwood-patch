.class public Lcom/android/server/autofill/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 0

    .line 6019
    iput-object p1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    iput-object p3, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .locals 6

    .line 6031
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6032
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    iget-object p1, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6034
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6035
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x2

    move v2, p2

    .line 6031
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/autofill/Session;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;I)V

    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 2

    .line 6022
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$response:Landroid/service/autofill/FillResponse;

    .line 6023
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result p0

    const/4 v1, 0x2

    .line 6022
    invoke-virtual {v0, p0, p2, p1, v1}, Lcom/android/server/autofill/Session;->fill(IILandroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 6046
    iget-object v0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v0, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    iget-object v1, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 6048
    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    .line 6047
    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 6049
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onInflate()V
    .locals 2

    .line 6054
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/Session;->onShown(II)V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    .line 6041
    iget-object p0, p0, Lcom/android/server/autofill/Session$3;->this$0:Lcom/android/server/autofill/Session;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
