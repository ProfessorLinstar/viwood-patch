.class public Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;
.super Ljava/lang/Object;
.source "BluetoothRouteController.java"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllBluetoothRoutes()Ljava/util/List;
    .locals 0

    .line 161
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransferableRoutes()Ljava/util/List;
    .locals 0

    .line 155
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public start(Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 0
    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateVolumeForDevices(II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
