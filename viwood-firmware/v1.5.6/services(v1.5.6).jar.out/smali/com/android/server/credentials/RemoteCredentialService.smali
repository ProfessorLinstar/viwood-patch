.class public Lcom/android/server/credentials/RemoteCredentialService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteCredentialService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/credentials/ICredentialProviderService;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$81bMjDd_PzSM1na10Fn9cojluxY(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginGetCredential$2(Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7OQoA3J37uDhI61JYMXPSPaeJk(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginGetCredential$1(Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DohCPT_22ZgbBQNbI2H8BbzgUmw(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onClearCredentialState$6(Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JupwSQ-PoB0jrCawITnHi0DdUCE(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginCreateCredential$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QugiT1pJjmY_IUP4-GNowUFRpsM(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginCreateCredential$4(Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SU8-f4sNmP3sQJ0B0PP006J0Jyk(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Void;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onClearCredentialState$7(Ljava/lang/Void;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ugprs2iUYdNzuHo7H6aRHCwrwxs(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onClearCredentialState$8(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_i46SAREyLN0okDAVD3KC7ijs9c(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginCreateCredential$3(Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bRAzATQc8Tz0Jyxag0nERhfRlR8(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/credentials/RemoteCredentialService;->lambda$onBeginGetCredential$0(Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdispatchCancellationSignal(Lcom/android/server/credentials/RemoteCredentialService;Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.credentials.CredentialProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda6;-><init>()V

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    .line 97
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 71
    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p0, v2, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-object p2, v2, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 123
    const-string v0, "CredentialManager"

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    invoke-interface {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V

    :cond_0
    return-void
.end method

.method public final dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 385
    const-string p0, "CredentialManager"

    if-nez p1, :cond_0

    .line 386
    const-string p1, "Error dispatching a cancellation - Signal is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 390
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 392
    const-string v0, "Error dispatching a cancellation"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3

    if-nez p2, :cond_0

    .line 335
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    .line 336
    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseSuccess(Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_0
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    const/4 v0, 0x0

    const-string v1, "CredentialManager"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 340
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Remote provider response timed tuo for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 344
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 345
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p1, :cond_7

    .line 346
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    const/4 p1, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(ILjava/lang/Exception;)V

    return-void

    .line 350
    :cond_2
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_4

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cancellation exception for remote provider: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 356
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p1, :cond_7

    .line 357
    iget-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 358
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    const/4 p1, 0x2

    invoke-interface {p0, p1, v0}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(ILjava/lang/Exception;)V

    return-void

    .line 362
    :cond_4
    instance-of p1, p2, Landroid/credentials/GetCredentialException;

    const/4 p3, 0x3

    if-eqz p1, :cond_5

    .line 363
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    .line 364
    check-cast p2, Landroid/credentials/GetCredentialException;

    invoke-interface {p0, p3, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(ILjava/lang/Exception;)V

    return-void

    .line 368
    :cond_5
    instance-of p1, p2, Landroid/credentials/CreateCredentialException;

    if-eqz p1, :cond_6

    .line 369
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    .line 370
    check-cast p2, Landroid/credentials/CreateCredentialException;

    invoke-interface {p0, p3, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(ILjava/lang/Exception;)V

    return-void

    .line 375
    :cond_6
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-eqz p0, :cond_7

    .line 376
    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p0, v2, p2}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderResponseFailure(ILjava/lang/Exception;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final synthetic lambda$onBeginCreateCredential$3(Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 225
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 229
    :try_start_0
    new-instance v3, Lcom/android/server/credentials/RemoteCredentialService$2;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService$2;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p4, p1, v3}, Landroid/service/credentials/ICredentialProviderService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/IBeginCreateCredentialCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    throw p0
.end method

.method public final synthetic lambda$onBeginCreateCredential$4(Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final synthetic lambda$onBeginCreateCredential$5(Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;)V
    .locals 2

    .line 265
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$onBeginGetCredential$0(Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 162
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 166
    :try_start_0
    new-instance v3, Lcom/android/server/credentials/RemoteCredentialService$1;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService$1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p4, p1, v3}, Landroid/service/credentials/ICredentialProviderService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/service/credentials/IBeginGetCredentialCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    throw p0
.end method

.method public final synthetic lambda$onBeginGetCredential$1(Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final synthetic lambda$onBeginGetCredential$2(Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;)V
    .locals 2

    .line 202
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialResponse;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$onClearCredentialState$6(Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/credentials/ICredentialProviderService;)Ljava/util/concurrent/CompletableFuture;
    .locals 4

    .line 287
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 291
    :try_start_0
    new-instance v3, Lcom/android/server/credentials/RemoteCredentialService$3;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService$3;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {p4, p1, v3}, Landroid/service/credentials/ICredentialProviderService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/service/credentials/IClearCredentialStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw p0
.end method

.method public final synthetic lambda$onClearCredentialState$7(Ljava/lang/Void;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/credentials/RemoteCredentialService;->handleExecutionResponse(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public final synthetic lambda$onClearCredentialState$8(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 2

    .line 327
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/lang/Void;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    .line 214
    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 220
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 223
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 262
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 263
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 265
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    .line 151
    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 157
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 161
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 199
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 200
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 202
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->onBindingDied(Landroid/content/ComponentName;)V

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "binding died for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredentialManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;)V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    if-nez v0, :cond_0

    .line 277
    const-string p0, "CredentialManager"

    const-string p1, "Callback is not set"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService;->mOngoingRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 283
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 285
    new-instance v2, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/ClearCredentialStateRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 286
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 324
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 325
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 327
    new-instance v1, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/server/credentials/RemoteCredentialService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public setCallback(Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService;->mCallback:Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    return-void
.end method
