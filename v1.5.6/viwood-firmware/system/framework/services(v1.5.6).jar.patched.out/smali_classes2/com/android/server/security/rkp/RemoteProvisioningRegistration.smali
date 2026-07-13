.class public final Lcom/android/server/security/rkp/RemoteProvisioningRegistration;
.super Landroid/security/rkp/IRegistration$Stub;
.source "RemoteProvisioningRegistration.java"


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mRegistration:Landroid/security/rkp/service/RegistrationProxy;

.field public final mStoreUpgradedKeyOperations:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$OKnIln1b9VPA_xgjHC3oxdTjwNk(Landroid/security/rkp/IGetKeyCallback;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-interface {p0, v0, p1}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpi8B1rShh1YcynByB1qtlfC6NM(Landroid/security/rkp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmGetKeyOperations(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStoreUpgradedKeyOperations(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoGetKeyError(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/service/RkpProxyException;)B
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->toGetKeyError(Landroid/security/rkp/service/RkpProxyException;)B

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mwrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->wrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V

    return-void
.end method

.method public constructor <init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/security/rkp/IRegistration$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 107
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    .line 108
    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelGetKey(Landroid/security/rkp/IGetKeyCallback;)V
    .locals 2

    .line 138
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting cancellation for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    return-void

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid client in cancelGetKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-interface {p1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKey(ILandroid/security/rkp/IGetKeyCallback;)V
    .locals 5

    .line 113
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RemoteProvisionSysSvc"

    if-nez v1, :cond_0

    .line 123
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for client "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    iget-object v3, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$GetKeyReceiver;

    invoke-direct {v4, p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$GetKeyReceiver;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IGetKeyCallback;)V

    invoke-virtual {v1, p1, v0, v3, v4}, Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKeyAsync threw an exception for client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$$ExternalSyntheticLambda0;-><init>(Landroid/security/rkp/IGetKeyCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->wrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V

    return-void

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Client can only request one call at a time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback is already associated with an existing operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p2}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeUpgradedKeyAsync([B[BLandroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mRegistration:Landroid/security/rkp/service/RegistrationProxy;

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;

    invoke-direct {v2, p0, p3}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;-><init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IStoreUpgradedKeyCallback;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/security/rkp/service/RegistrationProxy;->storeUpgradedKeyAsync([B[BLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "storeUpgradedKeyAsync threw an exception for client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 173
    const-string v0, "RemoteProvisionSysSvc"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    iget-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 176
    new-instance p2, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$$ExternalSyntheticLambda1;-><init>(Landroid/security/rkp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->wrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V

    return-void

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Callback is already associated with an existing operation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {p3}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toGetKeyError(Landroid/security/rkp/service/RkpProxyException;)B
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/security/rkp/service/RkpProxyException;->getError()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v2, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    .line 101
    const-string p0, "RemoteProvisionSysSvc"

    const-string v1, "Unexpected error code in RkpProxyException"

    invoke-static {p0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final wrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V
    .locals 1

    .line 189
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 191
    const-string p1, "RemoteProvisionSysSvc"

    const-string v0, "Error invoking callback on client binder"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
