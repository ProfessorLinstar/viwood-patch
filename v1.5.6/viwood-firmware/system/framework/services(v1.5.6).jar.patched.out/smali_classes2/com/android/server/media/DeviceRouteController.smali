.class public interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "DeviceRouteController.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)Lcom/android/server/media/DeviceRouteController;
    .locals 3

    .line 54
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 55
    invoke-static {}, Lcom/android/server/media/AudioRoutingUtils;->getMediaAudioProductStrategy()Landroid/media/audiopolicy/AudioProductStrategy;

    move-result-object v1

    .line 57
    const-class v2, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 69
    invoke-static {p0, v0, p1, v1, v2}, Lcom/android/server/media/AudioManagerRouteController;->getInstance(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Looper;Landroid/media/audiopolicy/AudioProductStrategy;Landroid/bluetooth/BluetoothAdapter;)Lcom/android/server/media/AudioManagerRouteController;

    move-result-object p0

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/server/media/AudioManagerRouteController;->registerRouteChangeListener(Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    return-object p0

    .line 74
    :cond_1
    const-string p1, "audio"

    .line 76
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 75
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object p1

    .line 77
    new-instance v1, Lcom/android/server/media/LegacyDeviceRouteController;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/server/media/LegacyDeviceRouteController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/IAudioService;Lcom/android/server/media/DeviceRouteController$OnDeviceRouteChangedListener;)V

    return-object v1
.end method

.method public static getBuiltInSpeakerSuitabilityStatus(Landroid/content/Context;)I
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00d3

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public abstract getAvailableRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolume(I)Z
.end method
