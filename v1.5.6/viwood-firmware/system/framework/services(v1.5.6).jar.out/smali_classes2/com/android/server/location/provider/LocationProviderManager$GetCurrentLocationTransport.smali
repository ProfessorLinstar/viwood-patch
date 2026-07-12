.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;


# instance fields
.field public final mCallback:Landroid/location/ILocationCallback;


# direct methods
.method public static synthetic $r8$lambda$aOq8QFW_mCPXmb4k1j_GZgjQtbw(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 371
    throw p0
.end method

.method public constructor <init>(Landroid/location/ILocationCallback;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    return-void
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 355
    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    if-eqz p1, :cond_1

    .line 359
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    invoke-virtual {p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V

    return-void

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;->mCallback:Landroid/location/ILocationCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/location/ILocationCallback;->onLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 369
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 370
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
