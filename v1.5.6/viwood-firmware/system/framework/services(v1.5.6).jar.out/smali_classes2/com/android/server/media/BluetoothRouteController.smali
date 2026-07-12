.class public interface abstract Lcom/android/server/media/BluetoothRouteController;
.super Ljava/lang/Object;
.source "BluetoothRouteController.java"


# direct methods
.method public static createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteController;
    .locals 0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-class p1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 51
    new-instance p0, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract getAllBluetoothRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract getTransferableRoutes()Ljava/util/List;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolumeForDevices(II)Z
.end method
