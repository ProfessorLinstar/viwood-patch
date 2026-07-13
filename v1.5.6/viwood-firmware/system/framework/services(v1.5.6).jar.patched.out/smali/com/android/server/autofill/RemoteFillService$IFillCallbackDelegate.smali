.class public Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# instance fields
.field public mCallbackWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/service/autofill/IFillCallback;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V

    :cond_0
    return-void
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0, p1, p2}, Landroid/service/autofill/IFillCallback;->onFailure(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/autofill/IFillCallback;

    if-eqz p0, :cond_0

    .line 191
    invoke-interface {p0, p1}, Landroid/service/autofill/IFillCallback;->onSuccess(Landroid/service/autofill/FillResponse;)V

    :cond_0
    return-void
.end method
