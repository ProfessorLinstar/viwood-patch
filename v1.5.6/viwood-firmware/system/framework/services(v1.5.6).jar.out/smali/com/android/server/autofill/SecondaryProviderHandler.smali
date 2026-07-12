.class public final Lcom/android/server/autofill/SecondaryProviderHandler;
.super Ljava/lang/Object;
.source "SecondaryProviderHandler.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;


# instance fields
.field public final mCallback:Lcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;

.field public mLastFlag:I

.field public final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/server/autofill/RemoteFillService;

    move-object v4, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v2, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V

    iput-object v0, v4, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 62
    iput-object p4, v4, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Creating a secondary provider handler with component name, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecondaryProviderHandler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;ILandroid/os/IBinder;)V
    .locals 2

    .line 104
    const-string v0, "Requesting fill response to secondary provider."

    const-string v1, "SecondaryProviderHandler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput p2, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mLastFlag:I

    .line 106
    iget-object p2, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/autofill/RemoteFillService;->isCredentialAutofillService()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    const-string p2, "About to call CredAutofill service as secondary provider"

    invoke-static {v1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/autofill/RemoteFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V

    return-void

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    return-void
.end method

.method public onFillRequestFailure(ILjava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .locals 0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Received a fill response: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SecondaryProviderHandler"

    invoke-static {p3, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mCallback:Lcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;

    iget p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mLastFlag:I

    invoke-interface {p1, p2, p0}, Lcom/android/server/autofill/SecondaryProviderHandler$SecondaryProviderCallback;->onSecondaryFillResponse(Landroid/service/autofill/FillResponse;I)V

    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/autofill/SecondaryProviderHandler;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/SecondaryProviderHandler;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method
