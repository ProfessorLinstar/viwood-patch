.class public interface abstract Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    const-string v1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    instance-of v3, v2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    if-eqz v3, :cond_1

    .line 26
    check-cast v2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    return-object v2

    .line 29
    :cond_1
    new-instance v2, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 32
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
    .locals 1

    .line 79
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V
.end method

.method public abstract getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V
.end method

.method public abstract getImage(I)Ljava/util/ArrayList;
.end method

.method public abstract getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V
.end method

.method public abstract registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V
.end method
