.class public Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;
.super Ljava/lang/Object;
.source "RemoteProvisioningShellCommand.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public mFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningShellCommand-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public join()Ljava/lang/Object;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 273
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningShellCommand$OutcomeFuture;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
