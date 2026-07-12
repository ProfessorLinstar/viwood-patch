.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConvertCredentialCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/IConvertCredentialCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/IFillCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCredentialAutofillService:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFillRequestId:I

.field private mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/service/autofill/ISaveCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$--183EjANpw91HKo2va0GC5un2w(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillCredentialRequest$2(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0XlyAiQT5OzqKESto0rFkNEAk2U(Landroid/service/autofill/FillEventHistory;Landroid/service/autofill/IAutoFillService;)V
    .locals 0

    .line 511
    invoke-interface {p1, p0}, Landroid/service/autofill/IAutoFillService;->onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0drfjd02UtjtR1pzZwZfvLOqncQ(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$9(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1hw0FNOarmG_sgD3O92JoX9WtBE(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$10(Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BpMSr5I3_9bplEhls6FgDTRLWpg(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillCredentialRequest$1(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kj5auWD1cOcSHM_ESYtjvwk7vTI(Lcom/android/internal/os/IResultReceiver;Landroid/service/autofill/IAutoFillService;)V
    .locals 0

    .line 518
    invoke-interface {p1, p0}, Landroid/service/autofill/IAutoFillService;->onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PXtmzf6bY2FCvCgDzGBClXL04mI(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$4(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SuRrSdn3wN_ru1_Fcwna6IC87ME(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillCredentialRequest$0(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$la-uaiQBhj70AfnUay3paV6FJv0(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$5(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tcRwao6_rV9k5G25qQkEhJDmAOM(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$3(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wSzwamvgNotE12sdMim5JjyvLFY(Lcom/android/server/autofill/RemoteFillService;Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->lambda$onSaveRequest$11(Landroid/content/IntentSender;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchCancellationSignal(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V
    .locals 8

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    if-eqz p5, :cond_0

    const/high16 p5, 0x400000

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/high16 v0, 0x100000

    or-int v5, p5, v0

    .line 104
    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 102
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 67
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    const/high16 p0, -0x80000000

    .line 69
    iput p0, v2, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 106
    iput-object p4, v2, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 107
    iput-object p2, v2, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 108
    invoke-virtual {p2, p6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v2, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 148
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget p0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/high16 p0, -0x80000000

    .line 168
    :goto_0
    monitor-exit v0

    return p0

    .line 169
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public destroy()V
    .locals 0

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public final dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 135
    const-string p1, "RemoteFillService"

    const-string v0, "Error requesting a cancellation"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public isCredentialAutofillService()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    return p0
.end method

.method public final synthetic lambda$onFillCredentialRequest$0(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 301
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onFillRequest() for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteFillService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 306
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;

    move-result-object p0

    .line 306
    invoke-interface {p5, p1, p0, p4}, Landroid/service/autofill/IAutoFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final synthetic lambda$onFillCredentialRequest$1(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 341
    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/high16 v1, -0x80000000

    .line 342
    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 343
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    if-nez v0, :cond_0

    .line 345
    const-string p0, "RemoteFillService"

    const-string p1, "Error calling RemoteFillService - service already unbound"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 349
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 350
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p2

    .line 349
    invoke-interface {v0, p1, p3, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    return-void

    .line 352
    :cond_1
    const-string p3, "RemoteFillService"

    const-string v0, "Error calling on fill request"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p3, :cond_2

    .line 354
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 355
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    .line 356
    :cond_2
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_3

    .line 358
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void

    .line 360
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onFillCredentialRequest$2(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .locals 7

    .line 339
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$onFillRequest$3(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 374
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onFillRequest() for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteFillService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 379
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$2;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/autofill/RemoteFillService$2;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V

    .line 380
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;

    move-result-object p0

    .line 379
    invoke-interface {p4, p1, p0}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    return-object v0
.end method

.method public final synthetic lambda$onFillRequest$4(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 414
    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/high16 v1, -0x80000000

    .line 415
    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 416
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p4

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 419
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result p2

    .line 418
    invoke-interface {p1, p4, p3, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    return-void

    .line 421
    :cond_0
    const-string p3, "RemoteFillService"

    const-string v0, "Error calling on fill request"

    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p3, :cond_1

    .line 423
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 424
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    .line 425
    :cond_1
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p3, :cond_2

    .line 427
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void

    .line 429
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 416
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onFillRequest$5(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .locals 7

    .line 412
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$onSaveRequest$10(Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 0

    if-nez p1, :cond_0

    .line 501
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void

    .line 503
    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 504
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-interface {p2, p0, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onSaveRequest$11(Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .locals 2

    .line 499
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$onSaveRequest$9(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2

    .line 483
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteFillService"

    const-string v1, "calling onSaveRequest()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 486
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/RemoteFillService$4;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/ISaveCallback;)Landroid/service/autofill/ISaveCallback;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    return-object v0
.end method

.method public final maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;
    .locals 1

    .line 264
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 265
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;-><init>(Landroid/service/autofill/IFillCallback;)V

    return-object p0
.end method

.method public final maybeWrapWithWeakReference(Landroid/service/autofill/ISaveCallback;)Landroid/service/autofill/ISaveCallback;
    .locals 1

    .line 275
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 276
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$ISaveCallbackDelegate;-><init>(Landroid/service/autofill/ISaveCallback;)V

    return-object p0
.end method

.method public onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V
    .locals 8

    .line 294
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFillRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 298
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 300
    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;)V

    invoke-virtual {v3, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    const-wide/16 p1, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 331
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    .line 332
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 334
    iget-object p1, v3, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 335
    :try_start_0
    iput-object p0, v3, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 336
    invoke-virtual {v4}, Landroid/service/autofill/FillRequest;->getId()I

    move-result p2

    iput p2, v3, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 337
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    new-instance p1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;

    invoke-direct {p1, v3, v4, v6}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 337
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 6

    .line 367
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 368
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFillRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 371
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 373
    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 404
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 409
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void

    :catchall_0
    move-exception p0

    .line 410
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 122
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_0

    .line 123
    const-string p1, "RemoteFillService"

    const-string/jumbo v0, "onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .locals 3

    .line 482
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 498
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 499
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1

    .line 518
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 59
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V
    .locals 1

    .line 114
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception calling onConnectedStateChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteFillService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionDestroyed(Landroid/service/autofill/FillEventHistory;)V
    .locals 1

    .line 510
    new-instance v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;-><init>(Landroid/service/autofill/FillEventHistory;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    move-result p0

    .line 514
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "called onSessionDestroyed(): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteFillService"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
