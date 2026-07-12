.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "GnssAntennaInfoProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;


# instance fields
.field public volatile mAntennaInfos:Ljava/util/List;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;


# direct methods
.method public static synthetic $r8$lambda$388qpu9OIFDanZibuiwKhrZ6esA(Ljava/util/List;Landroid/location/IGnssAntennaInfoListener;)V
    .locals 0

    .line 156
    invoke-interface {p1, p0}, Landroid/location/IGnssAntennaInfoListener;->onGnssAntennaInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 88
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .locals 4

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 102
    :try_start_0
    invoke-interface {p2}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p0
.end method

.method public getAntennaInfos()Ljava/util/List;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    return-object p0
.end method

.method public isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupported()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isAntennaInfoSupported()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Void;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onHalRestarted()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public onHalStarted()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startAntennaInfoListening()Z

    return-void
.end method

.method public onReportAntennaInfo(Ljava/util/List;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->mAntennaInfos:Ljava/util/List;

    .line 155
    new-instance v0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public removeListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 2

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGnssAntennaInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p0
.end method

.method public unregisterWithService()V
    .locals 0

    .line 0
    return-void
.end method
