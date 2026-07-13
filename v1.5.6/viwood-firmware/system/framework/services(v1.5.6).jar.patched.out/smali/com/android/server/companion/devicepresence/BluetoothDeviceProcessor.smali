.class public Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "BluetoothDeviceProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    .line 69
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 70
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 71
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    return-void
.end method


# virtual methods
.method public init(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 76
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 75
    invoke-virtual {p1, v0, p0}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    .line 77
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1, p0}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    .line 145
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    .line 144
    invoke-interface {p0, v0, p1}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceConnected(II)V

    :cond_0
    return-void
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5

    .line 113
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 115
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 118
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    if-eqz p2, :cond_1

    .line 121
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onBluetoothCompanionDeviceDisconnected(II)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 128
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForUser(I)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 133
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 134
    invoke-virtual {v1}, Lcom/android/server/companion/devicepresence/ObservableUuid;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;

    if-eqz p2, :cond_5

    const/4 v3, 0x2

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    :goto_3
    invoke-interface {v2, v1, v3}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor$Callback;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
