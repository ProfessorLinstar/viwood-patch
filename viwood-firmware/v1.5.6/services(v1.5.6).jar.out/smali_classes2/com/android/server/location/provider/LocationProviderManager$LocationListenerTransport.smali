.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# instance fields
.field public final mListener:Landroid/location/ILocationListener;


# direct methods
.method public static synthetic $r8$lambda$LPy2C7-fORETh6fKOUitbzZ7Tw0(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 251
    throw p0
.end method

.method public static synthetic $r8$lambda$mfMtHciOGaSofys5oqDc04MIvTE(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 269
    throw p0
.end method

.method public static synthetic $r8$lambda$ppxAAOAWtb6OKOUCQf8OF39w-os(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 234
    throw p0
.end method

.method public constructor <init>(Landroid/location/ILocationListener;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    return-void
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .locals 1

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {p0, p1}, Landroid/location/ILocationListener;->onFlushComplete(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 249
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 250
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 225
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 233
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 0

    .line 260
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onProviderEnabledChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 267
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 268
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
