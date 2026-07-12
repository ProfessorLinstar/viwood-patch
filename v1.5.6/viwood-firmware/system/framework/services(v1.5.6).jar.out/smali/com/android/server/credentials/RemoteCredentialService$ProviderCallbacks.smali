.class public interface abstract Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;
.super Ljava/lang/Object;
.source "RemoteCredentialService.java"


# virtual methods
.method public abstract onProviderCancellable(Landroid/os/ICancellationSignal;)V
.end method

.method public abstract onProviderResponseFailure(ILjava/lang/Exception;)V
.end method

.method public abstract onProviderResponseSuccess(Ljava/lang/Object;)V
.end method

.method public abstract onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
.end method
