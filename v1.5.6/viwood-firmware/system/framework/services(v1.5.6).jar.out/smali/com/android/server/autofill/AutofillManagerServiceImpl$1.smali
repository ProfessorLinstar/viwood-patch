.class public Lcom/android/server/autofill/AutofillManagerServiceImpl$1;
.super Ljava/lang/Object;
.source "AutofillManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1645
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1673
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1674
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1666
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logAugmentedAutofillShown(ILandroid/os/Bundle;)V
    .locals 0

    .line 1659
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillShown(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 1

    .line 1680
    const-string p1, "AutofillManagerServiceImpl"

    const-string/jumbo v0, "remote augmented autofill service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->-$$Nest$fgetmRemoteAugmentedAutofillService(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1684
    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 1686
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->-$$Nest$fputmRemoteAugmentedAutofillService(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 1645
    check-cast p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->onServiceDied(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    return-void
.end method

.method public resetLastResponse()V
    .locals 0

    .line 1648
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    return-void
.end method

.method public setLastResponse(I)V
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastAugmentedAutofillResponse(I)V

    return-void
.end method
