.class public Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;
.super Ljava/lang/Object;
.source "RemoteProvisioningService.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final mCallback:Landroid/security/rkp/IGetRegistrationCallback;

.field public final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/security/rkp/IGetRegistrationCallback;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/security/rkp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling error callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(Landroid/security/rkp/service/RegistrationProxy;)V
    .locals 3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    new-instance v1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object v2, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, p1, v2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Landroid/security/rkp/IGetRegistrationCallback;->onSuccess(Landroid/security/rkp/IRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error calling success callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->mCallback:Landroid/security/rkp/IGetRegistrationCallback;

    invoke-interface {p0}, Landroid/security/rkp/IGetRegistrationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Landroid/security/rkp/service/RegistrationProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningService$RegistrationReceiver;->onResult(Landroid/security/rkp/service/RegistrationProxy;)V

    return-void
.end method
