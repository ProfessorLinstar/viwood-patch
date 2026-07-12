.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "GnssAntennaInfoProvider.java"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    .line 56
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isMyProcess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/listeners/BinderListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 57
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public getBinderFromKey(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 0

    .line 49
    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->getBinderFromKey(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 62
    const-string p0, "GnssManager"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
