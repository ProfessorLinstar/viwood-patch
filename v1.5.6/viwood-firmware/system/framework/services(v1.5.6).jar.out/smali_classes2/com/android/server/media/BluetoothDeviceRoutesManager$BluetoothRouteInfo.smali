.class public Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;
.super Ljava/lang/Object;
.source "BluetoothDeviceRoutesManager.java"


# instance fields
.field public mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field public mConnectedProfiles:Landroid/util/SparseBooleanArray;

.field public mRoute:Landroid/media/MediaRoute2Info;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectedProfiles(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;)Landroid/media/MediaRoute2Info;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBtDevice(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmConnectedProfiles(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mConnectedProfiles:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRoute(Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;->mRoute:Landroid/media/MediaRoute2Info;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$BluetoothRouteInfo;-><init>()V

    return-void
.end method
