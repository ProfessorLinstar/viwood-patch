.class public Lcom/android/server/credentials/RemoteCredentialService$1;
.super Landroid/service/credentials/IBeginGetCredentialCallback$Stub;
.source "RemoteCredentialService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/RemoteCredentialService;

.field public final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$getCredentials:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/RemoteCredentialService;Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    iput-object p2, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$getCredentials:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Landroid/service/credentials/IBeginGetCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 184
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$mdispatchCancellationSignal(Lcom/android/server/credentials/RemoteCredentialService;Landroid/os/ICancellationSignal;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {v0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->this$0:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-static {p0}, Lcom/android/server/credentials/RemoteCredentialService;->-$$Nest$fgetmCallback(Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;->onProviderCancellable(Landroid/os/ICancellationSignal;)V

    :cond_1
    return-void
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p2, :cond_0

    .line 175
    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 177
    :goto_0
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$getCredentials:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Landroid/credentials/GetCredentialException;

    invoke-direct {v0, p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Landroid/service/credentials/BeginGetCredentialResponse;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/server/credentials/RemoteCredentialService$1;->val$getCredentials:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
